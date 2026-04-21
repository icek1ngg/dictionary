# 📖 Offline Dictionary

A fast, fully offline English–Vietnamese desktop dictionary application built with **C** and **Qt 6**.

The backend logic (database, search, history, bookmarks) is written in pure C for maximum performance, while the user interface leverages Qt 6 Widgets for a modern, polished desktop experience.

---

## ✨ Features

| Feature | Description |
|---|---|
| **Prefix search** | Real-time autocomplete suggestions as you type |
| **Exact lookup** | Case-insensitive exact word matching |
| **Definitions** | Multiple definitions per word with examples |
| **Audio pronunciation** | Supports `.mp3` audio playback for each word |
| **Search history** | Automatically records and displays recent lookups |
| **Bookmarks** | Save/unsave words with a single click |
| **Tags** | Organize bookmarked words into custom tag groups (create, rename, delete) |
| **Word CRUD** | Add, edit, and soft-delete dictionary entries |
| **Database migration** | Versioned SQL migration system for schema evolution |
| **Seed data** | Auto-seeds sample English–Vietnamese data on first launch |
| **100% offline** | No internet connection required — all data stored in a local SQLite database |

---

## 🏗️ Architecture

```
┌──────────────────────────────────────────────────┐
│                  Qt 6 Application                │
│  ┌────────────┐  ┌───────────────┐  ┌──────────┐ │
│  │SearchWidget│  │DictionaryView │  │ Bookmark │ │
│  │            │  │               │  │  Widget  │ │
│  └─────┬──────┘  └───────┬───────┘  └────┬─────┘ │
│        │                 │               │       │
│        └────────┬────────┴───────────────┘       │
│                 │                                │
│          ┌──────┴──────┐                         │
│          │ DictManager │  (C++ / Qt bridge)      │
│          └──────┬──────┘                         │
├─────────────────┼────────────────────────────────┤
│     Pure C      │        Backend Layer           │
│  ┌──────────────┴──────────────────────────────┐ │
│  │  dict_db  │ dict_search │ dict_history │    │ │
│  │           │             │ dict_bookmark│    │ │
│  └──────────────────┬─────────────────────────┘  │
│                     │                            │
│              ┌──────┴──────┐                     │
│              │   SQLite 3  │  (bundled)          │
│              └─────────────┘                     │
└──────────────────────────────────────────────────┘
```

- **`dict_core`** — Pure C static library: database operations, prefix/exact search, history, bookmarks & tags.
- **`DictManager`** — C++ class that wraps the C API with Qt types (`QString`, `QVector`, signals/slots).
- **UI Widgets** — Qt 6 Widgets with a custom teal/green theme (`AppStyle`).

---

## 📁 Project Structure

```
dictionary/
├── CMakeLists.txt              # Build configuration
├── dictionary.db               # SQLite database (auto-created)
├── db/
│   ├── migrations/
│   │   └── 001_schema.sql      # Database schema (versioned)
│   └── seed/
│       └── sample_data.sql     # Sample EN–VI word data
├── assets/
│   └── sounds/                 # Word pronunciation audio (.mp3)
├── src/
│   ├── main.cpp                # Application entry point
│   ├── core/                   # Pure C backend
│   │   ├── dict_db.h / .c      # DB open/close, migrate, seed, CRUD
│   │   ├── dict_search.h / .c  # Prefix & exact word search
│   │   ├── dict_history.h / .c # Lookup history management
│   │   └── dict_bookmark.h / .c# Bookmarks & tags management
│   ├── models/
│   │   └── DictManager.h / .cpp# C++ Qt wrapper over C backend
│   └── ui/
│       ├── AppStyle.h          # Global QSS theme
│       ├── MainWindow.*        # Main application window
│       ├── SearchWidget.*      # Search bar + suggestions + history
│       ├── DictionaryView.*    # Word details + definitions display
│       ├── BookmarkWidget.*    # Bookmarks list with tag filter
│       └── WordEditorDialog.*  # Dialog for add/edit word
└── third_party/
    └── sqlite3/                # SQLite 3 amalgamation (bundled)
```

---

## 🔧 Prerequisites

| Dependency | Version | Notes |
|---|---|---|
| **CMake** | ≥ 3.16 | Build system |
| **Qt 6** | 6.7+ | Modules: `Core`, `Widgets`, `Multimedia` |
| **C compiler** | C11 | GCC (MinGW), Clang, or MSVC |
| **C++ compiler** | C++17 | Same toolchain as C compiler |

> **Note:** SQLite 3 is bundled as an amalgamation — no external SQLite installation needed.

---

## 🚀 Build & Run

### Using CLion (recommended)

1. Open the `dictionary/` folder as a CMake project.
2. Ensure Qt 6 is detected (set `CMAKE_PREFIX_PATH` if needed).
3. Build and run the `OfflineDictionary` target.

### Using the command line

```bash
# Configure
cmake -B build -S dictionary -DCMAKE_PREFIX_PATH=/path/to/Qt/6.x.x/mingw_64

# Build
cmake --build build --target OfflineDictionary -j $(nproc)

# Run
./build/OfflineDictionary
```

On first launch, the application will:
1. Create `dictionary.db` if it does not exist.
2. Run SQL migrations from `db/migrations/`.
3. Seed sample English–Vietnamese data from `db/seed/sample_data.sql`.

---

## 🗄️ Database Schema

| Table | Purpose |
|---|---|
| `words` | Dictionary words (word, phonetic, type, audio path, soft-delete) |
| `definitions` | Multiple meanings/examples per word |
| `history` | Timestamped search lookup records |
| `bookmarks` | Saved/favorite words |
| `tags` | Custom tag names |
| `bookmark_tag_map` | Many-to-many: words × tags |
| `schema_versions` | Migration tracking |

---

## 🛠️ Tech Stack

- **C11** — High-performance backend logic
- **C++17** — Qt integration layer
- **Qt 6** — Desktop UI framework (Widgets + Multimedia)
- **SQLite 3** — Embedded relational database (bundled amalgamation, FTS5 enabled)
- **CMake** — Cross-platform build system

---

## 📄 License

This project is for educational and personal use.
