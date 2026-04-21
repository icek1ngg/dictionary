#pragma once

#include <QWidget>
#include <QCompleter>
#include <QStringListModel>

extern "C" {
#include "core/dict_db.h"
}

namespace Ui { class SearchWidget; }

class SearchWidget : public QWidget {
    Q_OBJECT

public:
    explicit SearchWidget(QWidget *parent = nullptr);
    ~SearchWidget();

    /* Autocomplete popup strings from prefix search. */
    void setSuggestions(const QVector<DictWord> &words);
    /* Left-side recent word list. */
    void setRecentHistory(const QVector<DictWord> &words);

signals:
    void queryChanged(const QString &query);
    void wordSubmitted(const QString &word);
    void suggestionPicked(const DictWord &w);

private slots:
    void onActivated(const QString &text);

private:
    Ui::SearchWidget  *ui;
    QCompleter        *m_completer;
    QStringListModel  *m_model;
    QVector<DictWord>  m_currentSuggestions;
};
