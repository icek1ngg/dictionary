/********************************************************************************
** Form generated from reading UI file 'DictionaryView.ui'
**
** Created by: Qt User Interface Compiler version 6.10.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DICTIONARYVIEW_H
#define UI_DICTIONARYVIEW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QTextBrowser>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_DictionaryView
{
public:
    QVBoxLayout *verticalLayout;
    QTextBrowser *m_content;

    void setupUi(QWidget *DictionaryView)
    {
        if (DictionaryView->objectName().isEmpty())
            DictionaryView->setObjectName("DictionaryView");
        DictionaryView->resize(600, 500);
        verticalLayout = new QVBoxLayout(DictionaryView);
        verticalLayout->setSpacing(0);
        verticalLayout->setObjectName("verticalLayout");
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        m_content = new QTextBrowser(DictionaryView);
        m_content->setObjectName("m_content");

        verticalLayout->addWidget(m_content);


        retranslateUi(DictionaryView);

        QMetaObject::connectSlotsByName(DictionaryView);
    } // setupUi

    void retranslateUi(QWidget *DictionaryView)
    {
        (void)DictionaryView;
    } // retranslateUi

};

namespace Ui {
    class DictionaryView: public Ui_DictionaryView {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DICTIONARYVIEW_H
