/********************************************************************************
** Form generated from reading UI file 'MainWindow.ui'
**
** Created by: Qt User Interface Compiler version 6.10.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QSplitter>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include <ui/BookmarkWidget.h>
#include <ui/DictionaryView.h>
#include <ui/SearchWidget.h>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QVBoxLayout *verticalLayout_central;
    QSplitter *m_splitter;
    QTabWidget *m_tabs;
    SearchWidget *m_search;
    BookmarkWidget *m_bookmarks;
    DictionaryView *m_view;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(1024, 680);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        verticalLayout_central = new QVBoxLayout(centralwidget);
        verticalLayout_central->setSpacing(0);
        verticalLayout_central->setObjectName("verticalLayout_central");
        verticalLayout_central->setContentsMargins(0, 0, 0, 0);
        m_splitter = new QSplitter(centralwidget);
        m_splitter->setObjectName("m_splitter");
        m_splitter->setOrientation(Qt::Orientation::Horizontal);
        m_splitter->setChildrenCollapsible(false);
        m_splitter->setHandleWidth(3);
        m_tabs = new QTabWidget(m_splitter);
        m_tabs->setObjectName("m_tabs");
        m_tabs->setMinimumSize(QSize(300, 0));
        m_tabs->setDocumentMode(false);
        m_search = new SearchWidget();
        m_search->setObjectName("m_search");
        m_tabs->addTab(m_search, QString());
        m_bookmarks = new BookmarkWidget();
        m_bookmarks->setObjectName("m_bookmarks");
        m_tabs->addTab(m_bookmarks, QString());
        m_splitter->addWidget(m_tabs);
        m_view = new DictionaryView(m_splitter);
        m_view->setObjectName("m_view");
        m_view->setMinimumSize(QSize(420, 0));
        m_splitter->addWidget(m_view);

        verticalLayout_central->addWidget(m_splitter);

        MainWindow->setCentralWidget(centralwidget);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "Offline Dictionary", nullptr));
        m_tabs->setTabText(m_tabs->indexOf(m_search), QCoreApplication::translate("MainWindow", "Search", nullptr));
        m_tabs->setTabText(m_tabs->indexOf(m_bookmarks), QCoreApplication::translate("MainWindow", "Bookmarks", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
