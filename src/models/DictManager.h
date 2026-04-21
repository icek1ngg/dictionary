#pragma once

#include <QObject>
#include <QString>
#include <QStringList>
#include <QVector>

extern "C" {
#include "core/dict_db.h"
}

class DictManager : public QObject {
    Q_OBJECT

public:
    explicit DictManager(const QString &dbPath,
                         const QString &migrationsDir,
                         QObject *parent = nullptr);
    ~DictManager();

    /* Prefix and exact word lookup, definitions. */
    QVector<DictWord>       searchPrefix(const QString &query, int limit = 20);
    bool                    lookupExact(const QString &word, DictWord &out);
    QVector<DictDefinition> getDefinitions(int wordId);

    /* Word CRUD: add/edit/delete soft. */
    bool addWord(const QString &word,
                 const QString &phonetic,
                 const QString &wordType,
                 const QString &audioPath,
                 const QString &meaning,
                 const QString &example = {});
    bool updateWord(int wordId,
                    const QString &word,
                    const QString &phonetic,
                    const QString &wordType,
                    const QString &audioPath,
                    const QString &meaning,
                    const QString &example = {});
    bool softDeleteWord(int wordId);

    /* Lookup history list. */
    void              addToHistory(int wordId);
    QVector<DictWord> getHistory(int limit = 100);
    void              clearHistory();

    /* Bookmarks and tags. */
    void              toggleBookmark(int wordId, const QString &tag = {});
    bool              isBookmarked(int wordId);
    QVector<DictWord> getBookmarks();
    QVector<DictWord> getBookmarksByTag(const QString &tag);
    QStringList       getBookmarkTags();
    QStringList       getWordTags(int wordId);
    bool              createTag(const QString &tag);
    bool              renameTag(const QString &oldName, const QString &newName);
    bool              deleteTag(const QString &tag);
    bool              addWordToTag(int wordId, const QString &tag);
    bool              removeWordFromTag(int wordId, const QString &tag);

    /* Run seed SQL when words table is empty; returns inserted count or -1. */
    int seedDatabase(const QString &seedSqlPath);

signals:
    void errorOccurred(const QString &message);
};
