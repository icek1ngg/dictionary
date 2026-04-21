/********************************************************************************
** Form generated from reading UI file 'BookmarkWidget.ui'
**
** Created by: Qt User Interface Compiler version 6.10.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_BOOKMARKWIDGET_H
#define UI_BOOKMARKWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_BookmarkWidget
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *topRow;
    QLabel *m_lblTitle;
    QSpacerItem *hSpacer;
    QComboBox *m_tagFilter;
    QListWidget *m_list;
    QHBoxLayout *btnRow;
    QPushButton *m_removeBtn;

    void setupUi(QWidget *BookmarkWidget)
    {
        if (BookmarkWidget->objectName().isEmpty())
            BookmarkWidget->setObjectName("BookmarkWidget");
        BookmarkWidget->resize(280, 400);
        verticalLayout = new QVBoxLayout(BookmarkWidget);
        verticalLayout->setSpacing(10);
        verticalLayout->setObjectName("verticalLayout");
        verticalLayout->setContentsMargins(14, 14, 14, 14);
        topRow = new QHBoxLayout();
        topRow->setSpacing(6);
        topRow->setObjectName("topRow");
        m_lblTitle = new QLabel(BookmarkWidget);
        m_lblTitle->setObjectName("m_lblTitle");

        topRow->addWidget(m_lblTitle);

        hSpacer = new QSpacerItem(40, 0, QSizePolicy::Policy::Expanding, QSizePolicy::Policy::Minimum);

        topRow->addItem(hSpacer);

        m_tagFilter = new QComboBox(BookmarkWidget);
        m_tagFilter->setObjectName("m_tagFilter");
        m_tagFilter->setMinimumSize(QSize(120, 34));
        m_tagFilter->setMaximumSize(QSize(16777215, 34));

        topRow->addWidget(m_tagFilter);


        verticalLayout->addLayout(topRow);

        m_list = new QListWidget(BookmarkWidget);
        m_list->setObjectName("m_list");

        verticalLayout->addWidget(m_list);

        btnRow = new QHBoxLayout();
        btnRow->setSpacing(6);
        btnRow->setObjectName("btnRow");
        m_removeBtn = new QPushButton(BookmarkWidget);
        m_removeBtn->setObjectName("m_removeBtn");
        m_removeBtn->setMinimumSize(QSize(0, 34));
        m_removeBtn->setMaximumSize(QSize(16777215, 34));
        m_removeBtn->setEnabled(false);

        btnRow->addWidget(m_removeBtn);


        verticalLayout->addLayout(btnRow);


        retranslateUi(BookmarkWidget);

        QMetaObject::connectSlotsByName(BookmarkWidget);
    } // setupUi

    void retranslateUi(QWidget *BookmarkWidget)
    {
        m_lblTitle->setText(QCoreApplication::translate("BookmarkWidget", "Bookmarks", nullptr));
        m_lblTitle->setStyleSheet(QCoreApplication::translate("BookmarkWidget", "color:#0F766E; font-weight:700; font-size:14px; letter-spacing:0.2px;", nullptr));
        m_removeBtn->setText(QCoreApplication::translate("BookmarkWidget", "Remove selected", nullptr));
#if QT_CONFIG(tooltip)
        m_removeBtn->setToolTip(QCoreApplication::translate("BookmarkWidget", "Remove selected bookmark or selected tag mapping", nullptr));
#endif // QT_CONFIG(tooltip)
        (void)BookmarkWidget;
    } // retranslateUi

};

namespace Ui {
    class BookmarkWidget: public Ui_BookmarkWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_BOOKMARKWIDGET_H
