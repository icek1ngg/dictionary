/********************************************************************************
** Form generated from reading UI file 'SettingsDialog.ui'
**
** Created by: Qt User Interface Compiler version 6.10.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGSDIALOG_H
#define UI_SETTINGSDIALOG_H

#include <QtCore/QVariant>
#include <QtWidgets/QAbstractButton>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QFormLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_SettingsDialog
{
public:
    QVBoxLayout *verticalLayout;
    QFormLayout *formLayout;
    QLabel *label_fontSize;
    QSpinBox *m_fontSize;
    QLabel *label_lang;
    QComboBox *m_lang;
    QLabel *label_history;
    QSpinBox *m_historyLimit;
    QCheckBox *m_autoTTS;
    QDialogButtonBox *m_buttons;

    void setupUi(QDialog *SettingsDialog)
    {
        if (SettingsDialog->objectName().isEmpty())
            SettingsDialog->setObjectName("SettingsDialog");
        SettingsDialog->resize(360, 240);
        SettingsDialog->setMinimumSize(QSize(340, 0));
        verticalLayout = new QVBoxLayout(SettingsDialog);
        verticalLayout->setSpacing(12);
        verticalLayout->setObjectName("verticalLayout");
        formLayout = new QFormLayout();
        formLayout->setObjectName("formLayout");
        label_fontSize = new QLabel(SettingsDialog);
        label_fontSize->setObjectName("label_fontSize");

        formLayout->setWidget(0, QFormLayout::ItemRole::LabelRole, label_fontSize);

        m_fontSize = new QSpinBox(SettingsDialog);
        m_fontSize->setObjectName("m_fontSize");
        m_fontSize->setMinimum(8);
        m_fontSize->setMaximum(28);
        m_fontSize->setValue(12);

        formLayout->setWidget(0, QFormLayout::ItemRole::FieldRole, m_fontSize);

        label_lang = new QLabel(SettingsDialog);
        label_lang->setObjectName("label_lang");

        formLayout->setWidget(1, QFormLayout::ItemRole::LabelRole, label_lang);

        m_lang = new QComboBox(SettingsDialog);
        m_lang->addItem(QString());
        m_lang->addItem(QString());
        m_lang->addItem(QString());
        m_lang->addItem(QString());
        m_lang->addItem(QString());
        m_lang->addItem(QString());
        m_lang->setObjectName("m_lang");

        formLayout->setWidget(1, QFormLayout::ItemRole::FieldRole, m_lang);

        label_history = new QLabel(SettingsDialog);
        label_history->setObjectName("label_history");

        formLayout->setWidget(2, QFormLayout::ItemRole::LabelRole, label_history);

        m_historyLimit = new QSpinBox(SettingsDialog);
        m_historyLimit->setObjectName("m_historyLimit");
        m_historyLimit->setMinimum(10);
        m_historyLimit->setMaximum(1000);
        m_historyLimit->setSingleStep(10);
        m_historyLimit->setValue(100);

        formLayout->setWidget(2, QFormLayout::ItemRole::FieldRole, m_historyLimit);

        m_autoTTS = new QCheckBox(SettingsDialog);
        m_autoTTS->setObjectName("m_autoTTS");

        formLayout->setWidget(3, QFormLayout::ItemRole::SpanningRole, m_autoTTS);


        verticalLayout->addLayout(formLayout);

        m_buttons = new QDialogButtonBox(SettingsDialog);
        m_buttons->setObjectName("m_buttons");
        m_buttons->setStandardButtons(QDialogButtonBox::StandardButton::Cancel|QDialogButtonBox::StandardButton::Ok);

        verticalLayout->addWidget(m_buttons);


        retranslateUi(SettingsDialog);

        QMetaObject::connectSlotsByName(SettingsDialog);
    } // setupUi

    void retranslateUi(QDialog *SettingsDialog)
    {
        SettingsDialog->setWindowTitle(QCoreApplication::translate("SettingsDialog", "Settings", nullptr));
        label_fontSize->setText(QCoreApplication::translate("SettingsDialog", "Font size:", nullptr));
        m_fontSize->setSuffix(QCoreApplication::translate("SettingsDialog", " pt", nullptr));
        label_lang->setText(QCoreApplication::translate("SettingsDialog", "Default language:", nullptr));
        m_lang->setItemText(0, QCoreApplication::translate("SettingsDialog", "en", nullptr));
        m_lang->setItemText(1, QCoreApplication::translate("SettingsDialog", "vi", nullptr));
        m_lang->setItemText(2, QCoreApplication::translate("SettingsDialog", "fr", nullptr));
        m_lang->setItemText(3, QCoreApplication::translate("SettingsDialog", "de", nullptr));
        m_lang->setItemText(4, QCoreApplication::translate("SettingsDialog", "ja", nullptr));
        m_lang->setItemText(5, QCoreApplication::translate("SettingsDialog", "zh", nullptr));

        label_history->setText(QCoreApplication::translate("SettingsDialog", "History limit:", nullptr));
        m_autoTTS->setText(QCoreApplication::translate("SettingsDialog", "Auto-play TTS on word lookup", nullptr));
    } // retranslateUi

};

namespace Ui {
    class SettingsDialog: public Ui_SettingsDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGSDIALOG_H
