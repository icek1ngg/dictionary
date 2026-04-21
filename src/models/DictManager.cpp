#include "DictManager.h"

static constexpr int MAX_RESULTS = 200;

DictManager::DictManager(const QString &dbPath,
                         const QString &migrationsDir,
                         QObject *parent)
    : QObject(parent)
{
    if (dict_db_open(dbPath.toUtf8().constData()) != 0) {
        emit errorOccurred(tr("Cannot open database: %1").arg(dbPath));
        return;
    }
    if (dict_db_migrate(migrationsDir.toUtf8().constData()) != 0)
        emit errorOccurred(tr("Database migration failed."));
}

DictManager::~DictManager()
{
    dict_db_close();
}

/* Words whose spelling starts with query. */
QVector<DictWord> DictManager::searchPrefix(const QString &query, int limit)
{
    QVector<DictWord> buf(limit);
    int n = dict_search_prefix(query.toUtf8().constData(), buf.data(), limit);
    if (n < 0) { emit errorOccurred(tr("Search prefix failed.")); return {}; }
    buf.resize(n);
    return buf;
}

/* Exact word match (case-insensitive). */
bool DictManager::lookupExact(const QString &word, DictWord &out)
{
    return dict_search_exact(word.toUtf8().constData(), &out) == 1;
}

/* All definition rows for one word id. */
QVector<DictDefinition> DictManager::getDefinitions(int wordId)
{
    QVector<DictDefinition> buf(32);
    int n = dict_db_get_definitions(wordId, buf.data(), buf.size());
    if (n < 0) { emit errorOccurred(tr("Failed to load definitions.")); return {}; }
    buf.resize(n);
    return buf;
}

/* Add a new dictionary word and its first definition. */
bool DictManager::addWord(const QString &word,
                          const QString &phonetic,
                          const QString &wordType,
                          const QString &audioPath,
                          const QString &meaning,
                          const QString &example)
{
    if (word.trimmed().isEmpty() || meaning.trimmed().isEmpty()) {
        emit errorOccurred(tr("Word and meaning cannot be empty."));
        return false;
    }

    DictWord w{};
    qstrncpy(w.word, word.trimmed().toUtf8().constData(), DICT_WORD_MAX);
    qstrncpy(w.phonetic, phonetic.trimmed().toUtf8().constData(), DICT_PHONETIC_MAX);
    qstrncpy(w.word_type, wordType.trimmed().toUtf8().constData(), DICT_TYPE_MAX);
    qstrncpy(w.audio_path, audioPath.trimmed().toUtf8().constData(), DICT_AUDIO_MAX);

    if (dict_db_add_word(&w,
                         meaning.trimmed().toUtf8().constData(),
                         example.trimmed().toUtf8().constData()) != 0) {
        emit errorOccurred(tr("Failed to add word to database."));
        return false;
    }
    return true;
}

/* Update dictionary word and its first definition. */
bool DictManager::updateWord(int wordId,
                             const QString &word,
                             const QString &phonetic,
                             const QString &wordType,
                             const QString &audioPath,
                             const QString &meaning,
                             const QString &example)
{
    if (wordId <= 0 || word.trimmed().isEmpty() || meaning.trimmed().isEmpty()) {
        emit errorOccurred(tr("Invalid input when updating word."));
        return false;
    }

    DictWord w{};
    qstrncpy(w.word, word.trimmed().toUtf8().constData(), DICT_WORD_MAX);
    qstrncpy(w.phonetic, phonetic.trimmed().toUtf8().constData(), DICT_PHONETIC_MAX);
    qstrncpy(w.word_type, wordType.trimmed().toUtf8().constData(), DICT_TYPE_MAX);
    qstrncpy(w.audio_path, audioPath.trimmed().toUtf8().constData(), DICT_AUDIO_MAX);

    if (dict_db_update_word(wordId,
                            &w,
                            meaning.trimmed().toUtf8().constData(),
                            example.trimmed().toUtf8().constData()) != 0) {
        emit errorOccurred(tr("Failed to update word."));
        return false;
    }
    return true;
}

/* Soft-delete word (hide from search/history/bookmark). */
bool DictManager::softDeleteWord(int wordId)
{
    if (wordId <= 0) {
        emit errorOccurred(tr("Invalid word id."));
        return false;
    }

    if (dict_db_soft_delete_word(wordId) != 0) {
        emit errorOccurred(tr("Failed to delete word."));
        return false;
    }
    return true;
}

/* Append a history entry for this word. */
void DictManager::addToHistory(int wordId)
{
    if (dict_history_add(wordId) != 0)
        emit errorOccurred(tr("Failed to record history."));
}

/* Recent lookups, newest first. */
QVector<DictWord> DictManager::getHistory(int limit)
{
    QVector<DictWord> buf(limit);
    int n = dict_history_get(buf.data(), limit);
    if (n < 0) return {};
    buf.resize(n);
    return buf;
}

/* Delete all history rows. */
void DictManager::clearHistory()
{
    if (dict_history_clear() != 0)
        emit errorOccurred(tr("Failed to clear history."));
}

/* Add or remove bookmark; optional default tag when adding. */
void DictManager::toggleBookmark(int wordId, const QString &tag)
{
    if (dict_bookmark_is_saved(wordId))
        dict_bookmark_remove(wordId);
    else
        dict_bookmark_add(wordId, tag.toUtf8().constData());
}

/* True if word is bookmarked. */
bool DictManager::isBookmarked(int wordId)
{
    return dict_bookmark_is_saved(wordId) == 1;
}

/* All bookmarked words. */
QVector<DictWord> DictManager::getBookmarks()
{
    QVector<DictWord> buf(MAX_RESULTS);
    int n = dict_bookmark_get_all(buf.data(), MAX_RESULTS);
    if (n < 0) return {};
    buf.resize(n);
    return buf;
}

/* Bookmarked words that have the given tag. */
QVector<DictWord> DictManager::getBookmarksByTag(const QString &tag)
{
    QVector<DictWord> buf(MAX_RESULTS);
    int n = dict_bookmark_get_by_tag(tag.toUtf8().constData(), buf.data(), MAX_RESULTS);
    if (n < 0) return {};
    buf.resize(n);
    return buf;
}

/* Distinct tag names. */
QStringList DictManager::getBookmarkTags()
{
    static constexpr int MAX_TAGS = 128;
    char buf[MAX_TAGS][DICT_TAG_MAX];
    int n = dict_bookmark_get_tags(buf, MAX_TAGS);
    if (n < 0) return {};

    QStringList tags;
    tags.reserve(n);
    for (int i = 0; i < n; ++i)
        tags << QString::fromUtf8(buf[i]);
    return tags;
}

/* Tags linked to one bookmarked word. */
QStringList DictManager::getWordTags(int wordId)
{
    static constexpr int MAX_TAGS = 128;
    char buf[MAX_TAGS][DICT_TAG_MAX];
    int n = dict_bookmark_get_word_tags(wordId, buf, MAX_TAGS);
    if (n < 0) return {};
    QStringList tags;
    for (int i = 0; i < n; ++i) tags << QString::fromUtf8(buf[i]);
    return tags;
}

/* Create tag if new. */
bool DictManager::createTag(const QString &tag)
{
    return dict_tag_create(tag.toUtf8().constData()) == 0;
}

/* Rename an existing tag. */
bool DictManager::renameTag(const QString &oldName, const QString &newName)
{
    return dict_tag_rename(oldName.toUtf8().constData(), newName.toUtf8().constData()) == 0;
}

/* Delete tag and its mappings. */
bool DictManager::deleteTag(const QString &tag)
{
    return dict_tag_delete(tag.toUtf8().constData()) == 0;
}

/* Link bookmarked word to a tag. */
bool DictManager::addWordToTag(int wordId, const QString &tag)
{
    return dict_bookmark_add_to_tag(wordId, tag.toUtf8().constData()) == 0;
}

/* Remove word from one tag (may remove bookmark if last tag). */
bool DictManager::removeWordFromTag(int wordId, const QString &tag)
{
    return dict_bookmark_remove_from_tag(wordId, tag.toUtf8().constData()) == 0;
}

/* Load sample SQL when words table is empty. */
int DictManager::seedDatabase(const QString &seedSqlPath)
{
    int n = dict_db_seed(seedSqlPath.toUtf8().constData());
    if (n < 0)
        emit errorOccurred(tr("Failed to seed database: %1").arg(seedSqlPath));
    return n;
}

