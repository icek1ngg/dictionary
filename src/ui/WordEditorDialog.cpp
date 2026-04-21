#include "WordEditorDialog.h"
#include "ui_WordEditorDialog.h"

#include <QDialogButtonBox>
#include <QLineEdit>
#include <QMessageBox>
#include <QPushButton>
#include <QRegularExpression>

extern "C" {
#include "core/dict_db.h"
}

WordEditorDialog::WordEditorDialog(const QString &title,
                                   const QString &okText,
                                   QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::WordEditorDialog)
{
    ui->setupUi(this);
    setWindowTitle(title);

    m_okButton = ui->m_buttonBox->addButton(okText, QDialogButtonBox::AcceptRole);
    m_okButton->setDefault(true);

    connect(m_okButton, &QPushButton::clicked, this, &WordEditorDialog::onAcceptClicked);
    connect(ui->m_buttonBox, &QDialogButtonBox::rejected, this, &QDialog::reject);
}

WordEditorDialog::~WordEditorDialog()
{
    delete ui;
}

void WordEditorDialog::setValues(const QString &word,
                                 const QString &phonetic,
                                 const QString &wordType,
                                 const QString &audioPath,
                                 const QString &meaning,
                                 const QString &example)
{
    ui->m_wordEdit->setText(word);
    ui->m_phoneticEdit->setText(phonetic);
    ui->m_typeEdit->setText(wordType);
    ui->m_audioEdit->setText(audioPath);
    ui->m_meaningEdit->setText(meaning);
    ui->m_exampleEdit->setText(example);
}

QString WordEditorDialog::word() const
{
    return ui->m_wordEdit->text().trimmed();
}

QString WordEditorDialog::phonetic() const
{
    return ui->m_phoneticEdit->text().trimmed();
}

QString WordEditorDialog::wordType() const
{
    return ui->m_typeEdit->text().trimmed();
}

QString WordEditorDialog::audioPath() const
{
    return ui->m_audioEdit->text().trimmed();
}

QString WordEditorDialog::meaning() const
{
    return ui->m_meaningEdit->text().trimmed();
}

QString WordEditorDialog::example() const
{
    return ui->m_exampleEdit->text().trimmed();
}

void WordEditorDialog::onAcceptClicked()
{
    if (!validateInput(word(), meaning(), phonetic(), wordType(), audioPath()))
        return;

    accept();
}

bool WordEditorDialog::validateInput(const QString &word,
                                     const QString &meaning,
                                     const QString &phonetic,
                                     const QString &wordType,
                                     const QString &audioPath) const
{
    if (word.isEmpty()) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"), tr("Word is required."));
        return false;
    }
    if (meaning.isEmpty()) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"), tr("Meaning is required."));
        return false;
    }

    if (word.size() >= DICT_WORD_MAX) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"),
                             tr("Word is too long (max %1 characters).")
                                 .arg(DICT_WORD_MAX - 1));
        return false;
    }
    if (phonetic.size() >= DICT_PHONETIC_MAX) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"),
                             tr("Phonetic is too long (max %1 characters).")
                                 .arg(DICT_PHONETIC_MAX - 1));
        return false;
    }
    if (wordType.size() >= DICT_TYPE_MAX) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"),
                             tr("Word type is too long (max %1 characters).")
                                 .arg(DICT_TYPE_MAX - 1));
        return false;
    }
    if (audioPath.size() >= DICT_AUDIO_MAX) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"),
                             tr("Audio path is too long (max %1 characters).")
                                 .arg(DICT_AUDIO_MAX - 1));
        return false;
    }
    if (meaning.size() >= DICT_MEANING_MAX) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"),
                             tr("Meaning is too long (max %1 characters).")
                                 .arg(DICT_MEANING_MAX - 1));
        return false;
    }

    static const QRegularExpression badSpace(R"([\r\n\t])");
    if (word.contains(badSpace)) {
        QMessageBox::warning(const_cast<WordEditorDialog*>(this), tr("Invalid input"),
                             tr("Word cannot contain line breaks or tabs."));
        return false;
    }

    return true;
}
