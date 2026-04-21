/********************************************************************************
** Form generated from reading UI file 'SearchWidget.ui'
**
** Created by: Qt User Interface Compiler version 6.10.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SEARCHWIDGET_H
#define UI_SEARCHWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_SearchWidget
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *searchRow;
    QLineEdit *m_input;
    QPushButton *m_searchBtn;
    QLabel *m_historyTitle;
    QListWidget *m_historyList;

    void setupUi(QWidget *SearchWidget)
    {
        if (SearchWidget->objectName().isEmpty())
            SearchWidget->setObjectName("SearchWidget");
        SearchWidget->resize(280, 400);
        verticalLayout = new QVBoxLayout(SearchWidget);
        verticalLayout->setSpacing(10);
        verticalLayout->setObjectName("verticalLayout");
        verticalLayout->setContentsMargins(14, 14, 14, 14);
        searchRow = new QHBoxLayout();
        searchRow->setSpacing(6);
        searchRow->setObjectName("searchRow");
        m_input = new QLineEdit(SearchWidget);
        m_input->setObjectName("m_input");
        m_input->setMinimumSize(QSize(0, 34));
        m_input->setMaximumSize(QSize(16777215, 34));
        QSizePolicy sizePolicy(QSizePolicy::Policy::Expanding, QSizePolicy::Policy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(m_input->sizePolicy().hasHeightForWidth());
        m_input->setSizePolicy(sizePolicy);
        m_input->setClearButtonEnabled(true);

        searchRow->addWidget(m_input);

        m_searchBtn = new QPushButton(SearchWidget);
        m_searchBtn->setObjectName("m_searchBtn");
        m_searchBtn->setMinimumSize(QSize(82, 34));
        m_searchBtn->setMaximumSize(QSize(110, 34));
        QSizePolicy sizePolicy1(QSizePolicy::Policy::Minimum, QSizePolicy::Policy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(m_searchBtn->sizePolicy().hasHeightForWidth());
        m_searchBtn->setSizePolicy(sizePolicy1);

        searchRow->addWidget(m_searchBtn);


        verticalLayout->addLayout(searchRow);

        m_historyTitle = new QLabel(SearchWidget);
        m_historyTitle->setObjectName("m_historyTitle");

        verticalLayout->addWidget(m_historyTitle);

        m_historyList = new QListWidget(SearchWidget);
        m_historyList->setObjectName("m_historyList");
        m_historyList->setMinimumSize(QSize(0, 160));

        verticalLayout->addWidget(m_historyList);


        retranslateUi(SearchWidget);

        m_searchBtn->setDefault(true);


        QMetaObject::connectSlotsByName(SearchWidget);
    } // setupUi

    void retranslateUi(QWidget *SearchWidget)
    {
        m_input->setPlaceholderText(QCoreApplication::translate("SearchWidget", "Search a word\342\200\246", nullptr));
        m_searchBtn->setText(QCoreApplication::translate("SearchWidget", "Search", nullptr));
        m_historyTitle->setText(QCoreApplication::translate("SearchWidget", "Recent searches", nullptr));
        m_historyTitle->setStyleSheet(QCoreApplication::translate("SearchWidget", "color:#4A5F5A; font-size:12px; font-weight:700; letter-spacing:0.3px;", nullptr));
        (void)SearchWidget;
    } // retranslateUi

};

namespace Ui {
    class SearchWidget: public Ui_SearchWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SEARCHWIDGET_H
