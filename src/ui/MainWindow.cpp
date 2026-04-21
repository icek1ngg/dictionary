#include "MainWindow.h"
#include "ui_MainWindow.h"
#include "SearchWidget.h"
#include "DictionaryView.h"
#include "BookmarkWidget.h"
#include "WordEditorDialog.h"

#include <QTabWidget>
#include <QSplitter>
#include <QMenuBar>
#include <QStatusBar>
#include <QLineEdit>
#include <QCoreApplication>
#include <QFont>
#include <QDialog>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QDialogButtonBox>
#include <QListWidgetItem>
#include <QListWidget>
#include <QAbstractItemView>
#include <QPushButton>
#include <QColor>
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
#ifdef DICT_SOURCE_DIR
    const QString projDir = QStringLiteral(DICT_SOURCE_DIR);
#else
    const QString projDir = QCoreApplication::applicationDirPath() + "/..";
#endif

    const QString dbPath  = projDir + "/dictionary.db";
    const QString migDir  = projDir + "/db/migrations";
    const QString seedSql = projDir + "/db/seed/sample_data.sql";

    m_dict = new DictManager(dbPath, migDir, this);

    connect(m_dict, &DictManager::errorOccurred, this, [this](const QString &msg){
        statusBar()->showMessage(tr("Error: %1").arg(msg), 5000);
    });

    int seeded = m_dict->seedDatabase(seedSql);
    if (seeded > 0)
        statusBar()->showMessage(tr("Database seeded with %1 words.").arg(seeded), 4000);

    if (dict_db_ensure_relative_audio_paths() != 0)
        statusBar()->showMessage(tr("Could not set default audio paths."), 3000);

    setupUI();
    applyDefaultFont();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::setupUI()
{
    ui->setupUi(this);
    menuBar()->hide();

    m_search    = ui->m_search;
    m_bookmarks = ui->m_bookmarks;
    m_view      = ui->m_view;
    m_tabs      = ui->m_tabs;

    QSplitter *splitter = ui->m_splitter;
    splitter->setCollapsible(0, false);
    splitter->setCollapsible(1, false);
    splitter->setStretchFactor(0, 1);
    splitter->setStretchFactor(1, 3);

    m_tabs->tabBar()->setExpanding(true);
    m_tabs->tabBar()->setUsesScrollButtons(false);
    m_tabs->tabBar()->setElideMode(Qt::ElideNone);

    const int leftWidth = qMax(280, (width() * 30) / 100);
    splitter->setSizes({leftWidth, qMax(200, width() - leftWidth)});
    connect(splitter, &QSplitter::splitterMoved, this, [splitter](int, int){
        const QList<int> sizes = splitter->sizes();
        if (sizes.size() < 2) return;

        const int total = sizes[0] + sizes[1];
        const int minLeft = 260;
        const int maxLeft = qMax(minLeft, (total * 45) / 100);
        int clampedLeft = qBound(minLeft, sizes[0], maxLeft);
        if (clampedLeft != sizes[0]) {
            splitter->setSizes({clampedLeft, qMax(200, total - clampedLeft)});
        }
    });

    statusBar()->showMessage(tr("Ready"));

    auto *addBtn = new QPushButton(tr("Add word"), this);
    auto *editBtn = new QPushButton(tr("Edit word"), this);
    auto *delBtn = new QPushButton(tr("Delete word"), this);
    addBtn->setToolTip(tr("Add a new word"));
    editBtn->setToolTip(tr("Edit selected word"));
    delBtn->setToolTip(tr("Delete selected word"));
    statusBar()->addPermanentWidget(addBtn);
    statusBar()->addPermanentWidget(editBtn);
    statusBar()->addPermanentWidget(delBtn);


    connect(addBtn, &QPushButton::clicked, this, [this] {
        WordEditorDialog dlg(tr("Add new word"), tr("Add"), this);
        if (dlg.exec() != QDialog::Accepted)
            return;

        const QString word = dlg.word();
        if (!m_dict->addWord(word,
                             dlg.phonetic(),
                             dlg.wordType(),
                             dlg.audioPath(),
                             dlg.meaning(),
                             dlg.example())) {
            QMessageBox::warning(this,
                                 tr("Add failed"),
                                 tr("Could not add word '%1'.\nPlease check duplicate spelling or input lengths.")
                                     .arg(word));
            return;
        }

        statusBar()->showMessage(tr("Added word: %1").arg(word), 3500);
        onWordSearched(word);
        refreshBookmarks();
    });

    connect(editBtn, &QPushButton::clicked, this, [this] {
        const int id = m_view->currentWordId();
        if (id <= 0) {
            QMessageBox::information(this, tr("No word selected"), tr("Please select a word before editing."));
            return;
        }

        QString word, phonetic, wordType, audioPath, meaning, example;
        if (!m_view->currentWordForm(word, phonetic, wordType, audioPath, meaning, example)) {
            QMessageBox::warning(this, tr("Edit failed"), tr("Current word data is not available."));
            return;
        }

        const QString originalWord = word;
        WordEditorDialog dlg(tr("Edit word"), tr("Save"), this);
        dlg.setValues(word, phonetic, wordType, audioPath, meaning, example);
        if (dlg.exec() != QDialog::Accepted)
            return;

        word = dlg.word();
        if (!m_dict->updateWord(id,
                                word,
                                dlg.phonetic(),
                                dlg.wordType(),
                                dlg.audioPath(),
                                dlg.meaning(),
                                dlg.example())) {
            QMessageBox::warning(this,
                                 tr("Update failed"),
                                 tr("Could not update '%1'.\nPlease verify the values and try again.")
                                     .arg(originalWord));
            return;
        }

        statusBar()->showMessage(tr("Updated word: %1").arg(word), 3500);
        onWordSearched(word);
        refreshBookmarks();
    });

    connect(delBtn, &QPushButton::clicked, this, [this] {
        const int id = m_view->currentWordId();
        if (id <= 0) {
            QMessageBox::information(this, tr("No word selected"), tr("Please select a word before deleting."));
            return;
        }

        QString word, phonetic, wordType, audioPath, meaning, example;
        m_view->currentWordForm(word, phonetic, wordType, audioPath, meaning, example);
        const auto ans = QMessageBox::question(
            this,
            tr("Confirm deletion"),
            tr("Are you sure to delete '%1'?").arg(word),
            QMessageBox::Yes | QMessageBox::No,
            QMessageBox::No);
        if (ans != QMessageBox::Yes)
            return;

        if (!m_dict->softDeleteWord(id)) {
            QMessageBox::critical(this,
                                  tr("Deletion failed"),
                                  tr("Unable to delete '%1'. Please try again.")
                                      .arg(word));
            return;
        }

        m_view->clear();
        m_search->setRecentHistory(m_dict->getHistory(kHistoryLimit));
        refreshBookmarks();
        statusBar()->showMessage(tr("Word deleted successfully: %1").arg(word), 3500);
    });

    m_search->setRecentHistory(m_dict->getHistory(kHistoryLimit));

    connect(m_search, &SearchWidget::queryChanged, this, [this](const QString &q){
        if (q.length() < 1) return;
        m_search->setSuggestions(m_dict->searchPrefix(q, 20));
    });
    connect(m_search, &SearchWidget::wordSubmitted,
            this, &MainWindow::onWordSearched);
    connect(m_search, &SearchWidget::suggestionPicked,
            this, &MainWindow::onSuggestionSelected);

    connect(m_tabs, &QTabWidget::currentChanged, this, [this](int idx){
        if (m_tabs->widget(idx) == m_bookmarks) refreshBookmarks();
    });

    connect(m_bookmarks, &BookmarkWidget::wordSelected,
            this, &MainWindow::onSuggestionSelected);
    connect(m_bookmarks, &BookmarkWidget::removeRequested, this,
            [this](int wordId, const QString &tag){
        if (tag.isEmpty())
            m_dict->toggleBookmark(wordId, {});
        else
            m_dict->removeWordFromTag(wordId, tag);
        refreshBookmarks();
        if (m_view->currentWordId() == wordId)
            m_view->setBookmarkState(m_dict->isBookmarked(wordId));
    });
    connect(m_bookmarks, &BookmarkWidget::tagFilterChanged, this, [this](const QString &tag){
        QVector<DictWord> words = tag.isEmpty()
            ? m_dict->getBookmarks()
            : m_dict->getBookmarksByTag(tag);
        m_bookmarks->reload(words);
    });

    connect(m_view, &DictionaryView::bookmarkToggled,
            this, &MainWindow::onBookmarkToggled);
}

void MainWindow::applyDefaultFont()
{
    QFont f = font();
    f.setPointSize(kDefaultFontPt);
    setFont(f);
    m_view->setContentFont(f);
}

void MainWindow::refreshBookmarks()
{
    const QString tag = m_bookmarks->activeTagFilter();
    const QVector<DictWord> words = tag.isEmpty()
        ? m_dict->getBookmarks()
        : m_dict->getBookmarksByTag(tag);
    m_bookmarks->reload(words);
    m_bookmarks->setTags(m_dict->getBookmarkTags());
}

void MainWindow::onWordSearched(const QString &word)
{
    DictWord dw{};
    if (!m_dict->lookupExact(word, dw)) {
        statusBar()->showMessage(tr("'%1' not found.").arg(word), 4000);
        m_view->clear();
        return;
    }
    onSuggestionSelected(dw);
    statusBar()->showMessage(tr("Found: %1").arg(word), 3000);
}

void MainWindow::onSuggestionSelected(const DictWord &w)
{
    if (w.id <= 0) return;
    m_view->showWord(w, m_dict->getDefinitions(w.id));
    m_dict->addToHistory(w.id);
    m_search->setRecentHistory(m_dict->getHistory(kHistoryLimit));
    m_tabs->setCurrentWidget(m_search);
    m_view->setBookmarkState(m_dict->isBookmarked(w.id));
}

/* Remove bookmark, or add then open tag picker dialog. */
void MainWindow::onBookmarkToggled(int wordId)
{
    bool wasBookmarked = m_dict->isBookmarked(wordId);

    if (wasBookmarked) {
        m_dict->toggleBookmark(wordId, {});
        statusBar()->showMessage(tr("Bookmark removed."), 3000);
        if (m_view->currentWordId() == wordId)
            m_view->setBookmarkState(m_dict->isBookmarked(wordId));
        refreshBookmarks();
        return;
    }

    /* Add bookmark first; roll back if user cancels dialog. */
    m_dict->toggleBookmark(wordId, {});

    QDialog dlg(this);
    dlg.setWindowTitle(tr("Organize bookmark"));
    dlg.resize(360, 420);
    auto *layout = new QVBoxLayout(&dlg);
    auto *tagList = new QListWidget(&dlg);
    tagList->setSelectionMode(QAbstractItemView::NoSelection);

    auto styleTagCheckRow = [](QListWidgetItem *it) {
        if (!it) return;
        const bool on = it->checkState() == Qt::Checked;
        if (on) {
            it->setBackground(QColor(QStringLiteral("#DFF0E1")));
            it->setForeground(QColor(QStringLiteral("#0D3D10")));
        } else {
            it->setBackground(QColor(QStringLiteral("#FFFFFF")));
            it->setForeground(QColor(QStringLiteral("#1B2B1C")));
        }
    };

    const QStringList allTags = m_dict->getBookmarkTags();
    for (const QString &t : allTags) {
        auto *it = new QListWidgetItem(t, tagList);
        it->setFlags(it->flags() | Qt::ItemIsUserCheckable);
        it->setCheckState(Qt::Unchecked);
        styleTagCheckRow(it);
    }

    connect(tagList, &QListWidget::itemChanged, &dlg,
            [styleTagCheckRow](QListWidgetItem *it) { styleTagCheckRow(it); });

    auto *row = new QHBoxLayout;
    auto *newTagInput = new QLineEdit(&dlg);
    newTagInput->setPlaceholderText(tr("New tag name"));
    auto *addTagBtn = new QPushButton(tr("Add tag"), &dlg);
    row->addWidget(newTagInput, 1);
    row->addWidget(addTagBtn);

    auto *buttons = new QDialogButtonBox(QDialogButtonBox::Ok | QDialogButtonBox::Cancel, &dlg);
    layout->addWidget(tagList);
    layout->addLayout(row);
    layout->addWidget(buttons);

    connect(addTagBtn, &QPushButton::clicked, addTagBtn, [=]{
        const QString t = newTagInput->text().trimmed();
        if (t.isEmpty()) return;
        if (!m_dict->createTag(t)) {
            statusBar()->showMessage(tr("Could not add tag."), 3000);
            return;
        }
        for (int i = 0; i < tagList->count(); ++i) {
            QListWidgetItem *ex = tagList->item(i);
            if (QString::compare(ex->text(), t, Qt::CaseInsensitive) == 0) {
                ex->setCheckState(Qt::Checked);
                newTagInput->clear();
                return;
            }
        }
        auto *it = new QListWidgetItem(t, tagList);
        it->setFlags(it->flags() | Qt::ItemIsUserCheckable);
        it->setCheckState(Qt::Checked);
        styleTagCheckRow(it);
        newTagInput->clear();
    });

    connect(buttons, &QDialogButtonBox::accepted, &dlg, &QDialog::accept);
    connect(buttons, &QDialogButtonBox::rejected, &dlg, &QDialog::reject);

    if (dlg.exec() != QDialog::Accepted) {
        m_dict->toggleBookmark(wordId, {});
        statusBar()->showMessage(tr("Bookmark cancelled."), 2500);
        if (m_view->currentWordId() == wordId)
            m_view->setBookmarkState(false);
        refreshBookmarks();
        return;
    }

    for (int i = 0; i < tagList->count(); ++i) {
        QListWidgetItem *it = tagList->item(i);
        if (it->checkState() == Qt::Checked)
            m_dict->addWordToTag(wordId, it->text());
    }

    statusBar()->showMessage(
        tr("Bookmarked."), 3000);

    if (m_view->currentWordId() == wordId)
        m_view->setBookmarkState(m_dict->isBookmarked(wordId));
    refreshBookmarks();
}
