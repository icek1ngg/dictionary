#include "DictionaryView.h"
#include "ui_DictionaryView.h"

#include <QUrl>
#include <QDir>
#include <QFile>
#include <QFileInfo>
#include <QFont>
#include <QMessageBox>
#include <QCoreApplication>

namespace {
QString resolveLocalAudioPath(const QString &stored)
{
    QString path = stored.trimmed();
    if (path.startsWith('"') || path.startsWith('\'')) path = path.mid(1);
    if (path.endsWith('"')  || path.endsWith('\''))  path = path.chopped(1);
    path = QDir::fromNativeSeparators(path);
    if (path.isEmpty()) return path;
    if (QFileInfo(path).isAbsolute()) return path;
#ifdef DICT_SOURCE_DIR
    const QString base = QStringLiteral(DICT_SOURCE_DIR);
#else
    const QString base = QCoreApplication::applicationDirPath() + QStringLiteral("/..");
#endif
    return QDir::fromNativeSeparators(QDir(base).absoluteFilePath(path));
}
}

DictionaryView::DictionaryView(QWidget *parent)
    : QWidget(parent), ui(new Ui::DictionaryView)
{
    ui->setupUi(this);

    m_player      = new QMediaPlayer(this);
    m_audioOutput = new QAudioOutput(this);
    m_player->setAudioOutput(m_audioOutput);
    m_audioOutput->setVolume(1.0f);

    ui->m_content->setOpenExternalLinks(false);
    ui->m_content->setOpenLinks(false);
    connect(ui->m_content, &QTextBrowser::anchorClicked,
            this, &DictionaryView::onContentLinkClicked);

    connect(m_player, &QMediaPlayer::playbackStateChanged, this,
            [this](QMediaPlayer::PlaybackState state){
        if (m_currentWordId < 0) return;
        const bool playing = (state == QMediaPlayer::PlayingState);
        if (playing == m_lastPlayingState)
            return;
        m_lastPlayingState = playing;
        renderHtml(false);
    });

    connect(m_player, &QMediaPlayer::errorOccurred, this,
            [this](QMediaPlayer::Error, const QString &errorString){
        QMessageBox::warning(this, tr("Playback Error"), errorString);
    });
}

DictionaryView::~DictionaryView()
{
    delete ui;
}

/* Show word headword, defs, and toolbar state. */
void DictionaryView::showWord(const DictWord &word, const QVector<DictDefinition> &defs)
{
    m_player->stop();
    m_currentWordId    = word.id;
    m_currentWord      = QString::fromUtf8(word.word);
    m_currentPhonetic  = QString::fromUtf8(word.phonetic);
    m_currentWordType  = QString::fromUtf8(word.word_type);
    m_currentAudioPath = QString::fromUtf8(word.audio_path);
    m_currentDefs      = defs;
    m_lastPlayingState = false;

    renderHtml(true);
}

/* Stop audio and clear panel. */
void DictionaryView::clear()
{
    m_player->stop();
    m_currentWordId = -1;
    m_isBookmarked = false;
    m_currentWord.clear();
    m_currentPhonetic.clear();
    m_currentWordType.clear();
    m_currentAudioPath.clear();
    m_currentDefs.clear();
    m_cachedBodyHtml.clear();
    m_lastPlayingState = false;
    ui->m_content->clear();
}

/* Refresh star icon without reloading defs. */
void DictionaryView::setBookmarkState(bool bookmarked)
{
    if (m_isBookmarked == bookmarked)
        return;

    m_isBookmarked = bookmarked;
    if (m_currentWordId < 0) return;

    renderHtml(false);
}

/* Snapshot current word fields for CRUD form. */
bool DictionaryView::currentWordForm(QString &word,
                                     QString &phonetic,
                                     QString &wordType,
                                     QString &audioPath,
                                     QString &meaning,
                                     QString &example) const
{
    if (m_currentWordId <= 0)
        return false;

    word = m_currentWord;
    phonetic = m_currentPhonetic;
    wordType = m_currentWordType;
    audioPath = m_currentAudioPath;
    meaning = m_currentDefs.isEmpty() ? QString() : QString::fromUtf8(m_currentDefs.first().meaning);
    example = m_currentDefs.isEmpty() ? QString() : QString::fromUtf8(m_currentDefs.first().example);
    return true;
}

/* Font for definition body text. */
void DictionaryView::setContentFont(const QFont &f)
{
    ui->m_content->setFont(f);
}

/* Play MP3 only. If file is missing, do nothing. */
void DictionaryView::onSpeakClicked()
{
    if (m_player->playbackState() == QMediaPlayer::PlayingState) {
        m_player->stop();
        return;
    }

    if (m_currentAudioPath.isEmpty())
        return;

    const QString path = resolveLocalAudioPath(m_currentAudioPath);
    if (!QFile::exists(path))
        return;

    m_player->setSource(QUrl::fromLocalFile(path));
    m_player->play();
}

/* Handle action://speak and action://bookmark links. */
void DictionaryView::onContentLinkClicked(const QUrl &url)
{
    if (m_currentWordId < 0) return;
    if (url.scheme() != "action") return;

    const QString action = url.host();
    if (action == "speak") {
        onSpeakClicked();
    } else if (action == "bookmark") {
        emit bookmarkToggled(m_currentWordId);
    }
}

/* Render combined HTML. Optionally rebuild static body section. */
void DictionaryView::renderHtml(bool rebuildBody)
{
    if (m_currentWordId < 0) {
        ui->m_content->clear();
        return;
    }

    if (rebuildBody)
        m_cachedBodyHtml = buildBodyHtml(m_currentDefs);

    ui->m_content->setHtml(buildHeaderHtml() + m_cachedBodyHtml);
}

/* Header with dynamic toolbar state (speak/bookmark). */
QString DictionaryView::buildHeaderHtml() const
{
    const bool hasAudio = !m_currentAudioPath.trimmed().isEmpty();
    const QString speakIcon = hasAudio ? (m_lastPlayingState ? QStringLiteral("⏹") : QStringLiteral("🔊"))
                                       : QStringLiteral("🔈");
    const QString speakColor = hasAudio ? QStringLiteral("#0078D7") : QStringLiteral("#A0A0A0");

    const QString bookmarkIcon = m_isBookmarked ? QStringLiteral("★") : QStringLiteral("☆");
    const QString bookmarkColor = m_isBookmarked ? QStringLiteral("#F28B00") : QStringLiteral("#A0A0A0");

    QString html;
    html += "<table cellspacing='0' cellpadding='0' style='margin-bottom:5px;'><tr>";
    
    // Word column
    html += QString("<td valign='middle' style='padding-right:15px;'>"
                    "<span style='color:#0F766E; font-size:28px; font-weight:700;'>%1</span>"
                    "</td>").arg(m_currentWord.toHtmlEscaped());
    
    // Audio column
    html += "<td valign='middle' style='padding-right:15px;'>";
    if (hasAudio) {
        html += QString("<a href='action://speak' style='text-decoration:none; color:%1; font-size:24px;'>%2</a>")
                .arg(speakColor, speakIcon);
    } else {
        html += QString("<span style='color:%1; font-size:24px;' title='No audio available'>%2</span>")
                .arg(speakColor, speakIcon);
    }
    html += "</td>";

    // Bookmark column
    html += QString("<td valign='middle'>"
                    "<a href='action://bookmark' style='text-decoration:none; color:%1; font-size:28px;'>%2</a>"
                    "</td>").arg(bookmarkColor, bookmarkIcon);
    
    html += "</tr></table>";

    // Phonetic & Word type
    html += QString("<p style='margin-top:0; margin-bottom:12px; font-size:15px;'>"
                    "<span style='color:#0D9488;'>%1</span>"
                    "&nbsp;&nbsp;&nbsp;"
                    "<span style='color:#64748B;'><i>%2</i></span>"
                    "</p>").arg(m_currentPhonetic.toHtmlEscaped(), m_currentWordType.toHtmlEscaped());

    // Separator line
    html += "<hr style='border:none; border-top:1px solid #D4E2DE; margin:0 0 16px 0;'/>";

    return html;
}

/* Body with definitions only (cached until word/defs change). */
QString DictionaryView::buildBodyHtml(const QVector<DictDefinition> &defs) const
{
    if (defs.isEmpty())
        return QStringLiteral("<p><i>No definitions found.</i></p>");

    QString html = QStringLiteral("<ol style='padding-left:20px; margin:0;'>");
    for (const DictDefinition &d : defs) {
        html += QString(
            "<li style='margin-bottom:10px;'>"
            "<span style='color:#1B2B1C; font-size:14px;'>%1</span>"
        ).arg(QString::fromUtf8(d.meaning).toHtmlEscaped());
        if (d.example[0]) {
            html += QString(
                "<br/><span style='color:#607862; font-size:12px;'>"
                "<i>\"%1\"</i></span>"
            ).arg(QString::fromUtf8(d.example).toHtmlEscaped());
        }
        html += QStringLiteral("</li>");
    }
    html += QStringLiteral("</ol>");
    return html;
}
