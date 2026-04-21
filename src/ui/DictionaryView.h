#pragma once

#include <QWidget>
#include <QMediaPlayer>
#include <QAudioOutput>
#include <QUrl>

extern "C" {
#include "core/dict_db.h"
}

namespace Ui { class DictionaryView; }

class DictionaryView : public QWidget {
    Q_OBJECT

public:
    explicit DictionaryView(QWidget *parent = nullptr);
    ~DictionaryView();

    void showWord(const DictWord &word, const QVector<DictDefinition> &defs);
    void clear();
    void setBookmarkState(bool bookmarked);
    /* -1 when empty. */
    int  currentWordId() const { return m_currentWordId; }
    /* Export current fields for edit form. false when empty. */
    bool currentWordForm(QString &word,
                         QString &phonetic,
                         QString &wordType,
                         QString &audioPath,
                         QString &meaning,
                         QString &example) const;
    /* Body font for QTextBrowser. */
    void setContentFont(const QFont &f);

signals:
    void bookmarkToggled(int wordId);

private slots:
    void onSpeakClicked();
    void onContentLinkClicked(const QUrl &url);

private:
    Ui::DictionaryView *ui;

    QMediaPlayer *m_player;
    QAudioOutput *m_audioOutput;

    int     m_currentWordId   = -1;
    bool    m_isBookmarked    = false;
    QString m_currentWord;
    QString m_currentPhonetic;
    QString m_currentWordType;
    QString m_currentAudioPath;
    QVector<DictDefinition> m_currentDefs;

    QString m_cachedBodyHtml;
    bool    m_lastPlayingState = false;

    void renderHtml(bool rebuildBody);
    QString buildHeaderHtml() const;
    QString buildBodyHtml(const QVector<DictDefinition> &defs) const;
};
