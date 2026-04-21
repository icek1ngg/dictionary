#pragma once

#include <QWidget>
#include <QVector>

extern "C" {
#include "core/dict_db.h"
}

namespace Ui { class BookmarkWidget; }

class BookmarkWidget : public QWidget {
    Q_OBJECT

public:
    explicit BookmarkWidget(QWidget *parent = nullptr);
    ~BookmarkWidget();

    void reload(const QVector<DictWord> &words);
    void setTags(const QStringList &tags);
    /* Empty = all tags; non-empty = filter by that tag. */
    QString activeTagFilter() const;

signals:
    void wordSelected(const DictWord &w);
    /* Empty tag: remove bookmark; non-empty: remove word from that tag only. */
    void removeRequested(int wordId, const QString &tag);
    void tagFilterChanged(const QString &tag);

private:
    Ui::BookmarkWidget *ui;
    QVector<DictWord>   m_words;
};
