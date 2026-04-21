#pragma once

#include <QMainWindow>
#include <QString>
#include "models/DictManager.h"

class SearchWidget;
class DictionaryView;
class BookmarkWidget;
class QTabWidget;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow {
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow() override;

private:
    static constexpr int kDefaultFontPt = 12;
    static constexpr int kHistoryLimit  = 10;

    Ui::MainWindow *ui = nullptr;
    DictManager    *m_dict;
    SearchWidget   *m_search;
    DictionaryView *m_view;
    BookmarkWidget *m_bookmarks;
    QTabWidget     *m_tabs;

    /* Wire widgets after ui->setupUi. */
    void setupUI();
    void applyDefaultFont();
    /* Reload bookmark tab from DB. */
    void refreshBookmarks();

private slots:
    /* User searched or submitted a word string. */
    void onWordSearched(const QString &word);
    /* User picked a word from list or history. */
    void onSuggestionSelected(const DictWord &word);
    /* Star toggled on dictionary view. */
    void onBookmarkToggled(int wordId);
};
