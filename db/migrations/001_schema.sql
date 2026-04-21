-- Dictionary schema (migration 001)

CREATE TABLE IF NOT EXISTS schema_versions (
    version     INTEGER PRIMARY KEY,
    applied_at  INTEGER DEFAULT (strftime('%s','now'))
);

CREATE TABLE IF NOT EXISTS words (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    word        TEXT NOT NULL UNIQUE COLLATE NOCASE,
    phonetic    TEXT,
    word_type   TEXT,
    lang_from   TEXT NOT NULL DEFAULT 'en',
    lang_to     TEXT NOT NULL DEFAULT 'vi',
    audio_path  TEXT DEFAULT '',
    created_at  INTEGER DEFAULT (strftime('%s','now')),
    deleted_at  INTEGER
);

CREATE TABLE IF NOT EXISTS definitions (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    word_id     INTEGER NOT NULL REFERENCES words(id) ON DELETE CASCADE,
    meaning     TEXT NOT NULL,
    example     TEXT,
    sort_order  INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS history (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    word_id     INTEGER NOT NULL REFERENCES words(id) ON DELETE CASCADE,
    searched_at INTEGER DEFAULT (strftime('%s','now'))
);

CREATE TABLE IF NOT EXISTS bookmarks (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    word_id     INTEGER NOT NULL REFERENCES words(id) ON DELETE CASCADE,
    noted_at    INTEGER DEFAULT (strftime('%s','now'))
);

/* Many-to-many: one word can have several tags */
CREATE TABLE IF NOT EXISTS tags (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    name        TEXT NOT NULL UNIQUE COLLATE NOCASE,
    created_at  INTEGER DEFAULT (strftime('%s','now'))
);

CREATE TABLE IF NOT EXISTS bookmark_tag_map (
    word_id     INTEGER NOT NULL REFERENCES words(id) ON DELETE CASCADE,
    tag_id      INTEGER NOT NULL REFERENCES tags(id) ON DELETE CASCADE,
    created_at  INTEGER DEFAULT (strftime('%s','now')),
    PRIMARY KEY (word_id, tag_id)
);

CREATE INDEX IF NOT EXISTS idx_history_searched_at ON history(searched_at DESC);
CREATE INDEX IF NOT EXISTS idx_bookmarks_word       ON bookmarks(word_id);
CREATE INDEX IF NOT EXISTS idx_btm_tag_id           ON bookmark_tag_map(tag_id);



DROP TABLE IF EXISTS flashcards;

INSERT OR IGNORE INTO schema_versions(version) VALUES (1);
