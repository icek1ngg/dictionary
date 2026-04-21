cmake_minimum_required(VERSION 3.16)
project(OfflineDictionary LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOUIC_SEARCH_PATHS ${CMAKE_SOURCE_DIR}/src/ui)

# ── Qt6 path ──────────────────────────────────────────────────────
if(NOT DEFINED CMAKE_PREFIX_PATH)
    find_program(QMAKE_EXE qmake HINTS
        "D:/Qt/6.10.2/mingw_64/bin"
        "C:/Qt/6.10.2/mingw_64/bin"
        "C:/Qt/6.7.2/mingw_64/bin"
    )
    if(QMAKE_EXE)
        get_filename_component(QT_BIN_DIR "${QMAKE_EXE}" DIRECTORY)
        get_filename_component(QT_ROOT    "${QT_BIN_DIR}/.." ABSOLUTE)
        list(APPEND CMAKE_PREFIX_PATH "${QT_ROOT}")
        message(STATUS "Qt6 auto-detected: ${QT_ROOT}")
    else()
        message(FATAL_ERROR
            "Qt6 not found. Set CMAKE_PREFIX_PATH to your Qt install dir.\n"
            "  e.g.  -DCMAKE_PREFIX_PATH=D:/Qt/6.10.2/mingw_64")
    endif()
endif()

find_package(Qt6 REQUIRED COMPONENTS Core Widgets Multimedia)

# ── SQLite3 amalgamation (bundled — no external dependency) ───────
add_library(sqlite3_amalg STATIC
    third_party/sqlite3/sqlite3.c
)
target_include_directories(sqlite3_amalg PUBLIC third_party/sqlite3)
# FTS5 enabled so opening old DBs can DROP legacy words_fts / triggers.
target_compile_definitions(sqlite3_amalg PUBLIC
    SQLITE_ENABLE_FTS5
    SQLITE_THREADSAFE=1
)
set_target_properties(sqlite3_amalg PROPERTIES LINKER_LANGUAGE C)

# Provide SQLite::SQLite3 alias so the rest of the code stays the same
add_library(SQLite::SQLite3 ALIAS sqlite3_amalg)

# ── C backend (pure C, không link Qt) ─────────────────────────────
add_library(dict_core STATIC
    ${CMAKE_SOURCE_DIR}/src/core/dict_db.c
    ${CMAKE_SOURCE_DIR}/src/core/dict_search.c
    ${CMAKE_SOURCE_DIR}/src/core/dict_history.c
    ${CMAKE_SOURCE_DIR}/src/core/dict_bookmark.c
)
target_include_directories(dict_core PUBLIC ${CMAKE_SOURCE_DIR}/src)
target_link_libraries(dict_core PUBLIC SQLite::SQLite3)
set_target_properties(dict_core PROPERTIES LINKER_LANGUAGE C)

# ── Qt application ────────────────────────────────────────────────
qt6_add_executable(OfflineDictionary
    ${CMAKE_SOURCE_DIR}/src/main.cpp
    ${CMAKE_SOURCE_DIR}/src/ui/MainWindow.ui
    ${CMAKE_SOURCE_DIR}/src/ui/WordEditorDialog.ui
    ${CMAKE_SOURCE_DIR}/src/ui/MainWindow.cpp
    ${CMAKE_SOURCE_DIR}/src/ui/SearchWidget.cpp
    ${CMAKE_SOURCE_DIR}/src/ui/DictionaryView.cpp
    ${CMAKE_SOURCE_DIR}/src/ui/BookmarkWidget.cpp
    ${CMAKE_SOURCE_DIR}/src/ui/WordEditorDialog.cpp
    ${CMAKE_SOURCE_DIR}/src/models/DictManager.cpp
)
target_include_directories(OfflineDictionary PRIVATE ${CMAKE_SOURCE_DIR}/src)
target_compile_definitions(OfflineDictionary PRIVATE
    DICT_SOURCE_DIR="${CMAKE_SOURCE_DIR}"
)
target_link_libraries(OfflineDictionary PRIVATE
    Qt6::Core
    Qt6::Widgets
    Qt6::Multimedia
    dict_core
)

# end of build configuration
