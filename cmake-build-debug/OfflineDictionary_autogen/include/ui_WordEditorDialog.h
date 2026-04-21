/********************************************************************************
** Form generated from reading UI file 'WordEditorDialog.ui'
**
** Created by: Qt User Interface Compiler version 6.10.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_WORDEDITORDIALOG_H
#define UI_WORDEDITORDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_WordEditorDialog
{
public:
    QVBoxLayout *verticalLayout;
    QFormLayout *formLayout;
    QLabel *labelWord;
    QLineEdit *m_wordEdit;
    QLabel *labelPhonetic;
    QLineEdit *m_phoneticEdit;
    QLabel *labelType;
    QLineEdit *m_typeEdit;
    QLabel *labelAudio;
    QLineEdit *m_audioEdit;
    QLabel *labelMeaning;
    QLineEdit *m_meaningEdit;
    QLabel *labelExample;
    QLineEdit *m_exampleEdit;
    QDialogButtonBox *m_buttonBox;

    void setupUi(QDialog *WordEditorDialog)
    {
        if (WordEditorDialog->objectName().isEmpty())
            WordEditorDialog->setObjectName("WordEditorDialog");
        WordEditorDialog->resize(520, 360);
        verticalLayout = new QVBoxLayout(WordEditorDialog);
        verticalLayout->setSpacing(10);
        verticalLayout->setObjectName("verticalLayout");
        verticalLayout->setContentsMargins(14, 14, 14, 14);
        formLayout = new QFormLayout();
        formLayout->setObjectName("formLayout");
        formLayout->setLabelAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        formLayout->setHorizontalSpacing(10);
        formLayout->setVerticalSpacing(8);
        labelWord = new QLabel(WordEditorDialog);
        labelWord->setObjectName("labelWord");

        formLayout->setWidget(0, QFormLayout::ItemRole::LabelRole, labelWord);

        m_wordEdit = new QLineEdit(WordEditorDialog);
        m_wordEdit->setObjectName("m_wordEdit");

        formLayout->setWidget(0, QFormLayout::ItemRole::FieldRole, m_wordEdit);

        labelPhonetic = new QLabel(WordEditorDialog);
        labelPhonetic->setObjectName("labelPhonetic");

        formLayout->setWidget(1, QFormLayout::ItemRole::LabelRole, labelPhonetic);

        m_phoneticEdit = new QLineEdit(WordEditorDialog);
        m_phoneticEdit->setObjectName("m_phoneticEdit");

        formLayout->setWidget(1, QFormLayout::ItemRole::FieldRole, m_phoneticEdit);

        labelType = new QLabel(WordEditorDialog);
        labelType->setObjectName("labelType");

        formLayout->setWidget(2, QFormLayout::ItemRole::LabelRole, labelType);

        m_typeEdit = new QLineEdit(WordEditorDialog);
        m_typeEdit->setObjectName("m_typeEdit");

        formLayout->setWidget(2, QFormLayout::ItemRole::FieldRole, m_typeEdit);

        labelAudio = new QLabel(WordEditorDialog);
        labelAudio->setObjectName("labelAudio");

        formLayout->setWidget(3, QFormLayout::ItemRole::LabelRole, labelAudio);

        m_audioEdit = new QLineEdit(WordEditorDialog);
        m_audioEdit->setObjectName("m_audioEdit");

        formLayout->setWidget(3, QFormLayout::ItemRole::FieldRole, m_audioEdit);

        labelMeaning = new QLabel(WordEditorDialog);
        labelMeaning->setObjectName("labelMeaning");

        formLayout->setWidget(4, QFormLayout::ItemRole::LabelRole, labelMeaning);

        m_meaningEdit = new QLineEdit(WordEditorDialog);
        m_meaningEdit->setObjectName("m_meaningEdit");

        formLayout->setWidget(4, QFormLayout::ItemRole::FieldRole, m_meaningEdit);

        labelExample = new QLabel(WordEditorDialog);
        labelExample->setObjectName("labelExample");

        formLayout->setWidget(5, QFormLayout::ItemRole::LabelRole, labelExample);

        m_exampleEdit = new QLineEdit(WordEditorDialog);
        m_exampleEdit->setObjectName("m_exampleEdit");

        formLayout->setWidget(5, QFormLayout::ItemRole::FieldRole, m_exampleEdit);


        verticalLayout->addLayout(formLayout);

        m_buttonBox = new QDialogButtonBox(WordEditorDialog);
        m_buttonBox->setObjectName("m_buttonBox");
        m_buttonBox->setStandardButtons(QDialogButtonBox::Cancel);

        verticalLayout->addWidget(m_buttonBox);


        retranslateUi(WordEditorDialog);

        QMetaObject::connectSlotsByName(WordEditorDialog);
    } // setupUi

    void retranslateUi(QDialog *WordEditorDialog)
    {
        WordEditorDialog->setWindowTitle(QCoreApplication::translate("WordEditorDialog", "Word editor", nullptr));
        labelWord->setText(QCoreApplication::translate("WordEditorDialog", "Word*", nullptr));
        m_wordEdit->setPlaceholderText(QCoreApplication::translate("WordEditorDialog", "headword (required)", nullptr));
        labelPhonetic->setText(QCoreApplication::translate("WordEditorDialog", "Phonetic", nullptr));
        m_phoneticEdit->setPlaceholderText(QCoreApplication::translate("WordEditorDialog", "e.g. /word/", nullptr));
        labelType->setText(QCoreApplication::translate("WordEditorDialog", "Word type", nullptr));
        m_typeEdit->setPlaceholderText(QCoreApplication::translate("WordEditorDialog", "e.g. noun, verb", nullptr));
        labelAudio->setText(QCoreApplication::translate("WordEditorDialog", "Audio path", nullptr));
        m_audioEdit->setPlaceholderText(QCoreApplication::translate("WordEditorDialog", "assets/sounds/word.mp3", nullptr));
        labelMeaning->setText(QCoreApplication::translate("WordEditorDialog", "Meaning*", nullptr));
        m_meaningEdit->setPlaceholderText(QCoreApplication::translate("WordEditorDialog", "meaning (required)", nullptr));
        labelExample->setText(QCoreApplication::translate("WordEditorDialog", "Example", nullptr));
        m_exampleEdit->setPlaceholderText(QCoreApplication::translate("WordEditorDialog", "usage example", nullptr));
    } // retranslateUi

};

namespace Ui {
    class WordEditorDialog: public Ui_WordEditorDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_WORDEDITORDIALOG_H
