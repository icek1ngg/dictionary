#pragma once

#include <QApplication>
#include <QFont>

/*
 * Global app-like style system.
 *
 * Design goals:
 * - clean desktop-app surface hierarchy
 * - strong visual focus state
 * - soft shadows using layered borders and contrast
 * - consistent spacing and corner radius
 */
namespace AppStyle {

inline void apply(QApplication &app)
{
    app.setStyleSheet(R"(

/* ── Tokens ───────────────────────────────────────────────────── */
QWidget {
    background: #F4F7F9;
    color: #172B27;
    font-family: "Segoe UI";
    font-size: 13px;
}

/* ── Main shell ───────────────────────────────────────────────── */
QMainWindow {
    background: #EEF3F5;
}

QWidget#centralwidget {
    background: #EEF3F5;
}

/* ── Menu + Status ───────────────────────────────────────────── */
QMenuBar {
    background: #134E4A;
    color: #FFFFFF;
    padding: 3px 6px;
}
QMenuBar::item {
    padding: 6px 12px;
    border-radius: 6px;
}
QMenuBar::item:selected,
QMenuBar::item:pressed {
    background: #0F766E;
}
QMenu {
    background: #FFFFFF;
    border: 1px solid #D3E2DE;
    border-radius: 10px;
    padding: 6px;
}
QMenu::item {
    padding: 7px 28px 7px 12px;
    border-radius: 6px;
}
QMenu::item:selected {
    background: #E7F6F3;
    color: #0F766E;
}

QStatusBar {
    background: #FFFFFF;
    border-top: 1px solid #D7E1DE;
    color: #4A5F5A;
    padding: 5px 10px;
    font-size: 12px;
}
QStatusBar::item {
    border: none;
}

/* ── Panels ───────────────────────────────────────────────────── */
QTabWidget::pane {
    border: 1px solid #D9E5E1;
    border-radius: 12px;
    background: #FFFFFF;
    top: -1px;
}
QTabWidget::tab-bar {
    alignment: left;
}
QTabBar {
    background: transparent;
}
QTabBar::tab {
    background: #DDEAE6;
    color: #42605A;
    border: 1px solid #D3E1DD;
    border-bottom: none;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    padding: 9px 14px;
    margin-right: 6px;
    font-weight: 600;
    min-width: 96px;
}
QTabBar::tab:selected {
    background: #FFFFFF;
    color: #0F766E;
    border-color: #BFD2CD;
}
QTabBar::tab:hover:!selected {
    background: #EAF3F0;
    color: #1E5F57;
}

QSplitter::handle {
    background: transparent;
    width: 8px;
}
QSplitter::handle:horizontal {
    margin: 8px 2px;
    border-radius: 3px;
    background: #D4E3DF;
}
QSplitter::handle:horizontal:hover {
    background: #7FB9AF;
}

/* ── Inputs ───────────────────────────────────────────────────── */
QLineEdit,
QComboBox,
QSpinBox {
    background: #FFFFFF;
    border: 1px solid #C9D9D5;
    border-radius: 10px;
    padding: 8px 11px;
    min-height: 18px;
    selection-background-color: #BEE9E2;
}
QLineEdit:hover,
QComboBox:hover,
QSpinBox:hover {
    border-color: #7FB9AF;
}
QLineEdit:focus,
QComboBox:focus,
QSpinBox:focus {
    border: 2px solid #0F766E;
    padding: 7px 10px;
}
QLineEdit::placeholder {
    color: #8BA09B;
}

QComboBox::drop-down {
    border: none;
    width: 24px;
}
QComboBox::down-arrow {
    image: none;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 6px solid #0F766E;
    margin-right: 7px;
}
QComboBox QAbstractItemView {
    background: #FFFFFF;
    border: 1px solid #C9D9D5;
    border-radius: 8px;
    outline: none;
    selection-background-color: #E6F6F3;
    selection-color: #0F766E;
}

/* ── Buttons ──────────────────────────────────────────────────── */
QPushButton {
    background: #0F766E;
    color: #FFFFFF;
    border: none;
    border-radius: 10px;
    padding: 8px 14px;
    min-height: 18px;
    font-weight: 600;
}
QPushButton:hover {
    background: #0B8A80;
}
QPushButton:pressed {
    background: #0A5F58;
}
QPushButton:disabled {
    background: #BCD0CC;
    color: #F8FAFA;
}

QPushButton#secondaryBtn,
QPushButton[flat="true"] {
    background: #FFFFFF;
    color: #0F766E;
    border: 1px solid #A9C7C1;
}
QPushButton#secondaryBtn:hover,
QPushButton[flat="true"]:hover {
    background: #ECF7F4;
    border-color: #7FB9AF;
}

QPushButton#dangerBtn {
    background: #B42318;
}
QPushButton#dangerBtn:hover {
    background: #D92D20;
}
QPushButton#dangerBtn:pressed {
    background: #912018;
}

/* ── Lists / rich text ────────────────────────────────────────── */
QListWidget {
    background: #FFFFFF;
    border: 1px solid #D4E2DE;
    border-radius: 12px;
    padding: 6px;
    outline: none;
}
QListWidget::item {
    padding: 8px 10px;
    border-radius: 8px;
    color: #1D312D;
}
QListWidget::item:hover {
    background: #F0F8F6;
}
QListWidget::item:selected {
    background: #DDF2EE;
    color: #0F766E;
    font-weight: 600;
}

QTextBrowser {
    background: #FFFFFF;
    border: 1px solid #D4E2DE;
    border-radius: 14px;
    padding: 16px 18px;
}

/* ── Scrollbars ─────────────────────────────────────────────── */
QScrollBar:vertical {
    background: transparent;
    width: 10px;
    margin: 3px;
}
QScrollBar::handle:vertical {
    background: #BBD3CE;
    border-radius: 5px;
    min-height: 28px;
}
QScrollBar::handle:vertical:hover {
    background: #88B9B0;
}
QScrollBar::add-line:vertical,
QScrollBar::sub-line:vertical {
    height: 0;
}
QScrollBar:horizontal {
    background: transparent;
    height: 10px;
    margin: 3px;
}
QScrollBar::handle:horizontal {
    background: #BBD3CE;
    border-radius: 5px;
    min-width: 28px;
}
QScrollBar::handle:horizontal:hover {
    background: #88B9B0;
}
QScrollBar::add-line:horizontal,
QScrollBar::sub-line:horizontal {
    width: 0;
}

/* ── Dialog + checkbox ───────────────────────────────────────── */
QDialog {
    background: #F7FBFA;
}
QDialogButtonBox QPushButton {
    min-width: 90px;
}

QCheckBox {
    spacing: 8px;
}
QCheckBox::indicator {
    width: 17px;
    height: 17px;
    border: 2px solid #2A7A72;
    border-radius: 5px;
    background: #FFFFFF;
}
QCheckBox::indicator:checked {
    background: #0F766E;
    border-color: #0F766E;
}

QLabel[title="true"] {
    color: #0F766E;
    font-size: 14px;
    font-weight: 700;
}

    )");

    app.setFont(QFont("Segoe UI", 11));
}

} // namespace AppStyle
