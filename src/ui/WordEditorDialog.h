#pragma once

#include <QDialog>
#include <QString>

class QLineEdit;
class QPushButton;

namespace Ui {
class WordEditorDialog;
}

class WordEditorDialog : public QDialog {
    Q_OBJECT

public:
    explicit WordEditorDialog(const QString &title,
                              const QString &okText,
                              QWidget *parent = nullptr);
    ~WordEditorDialog() override;

    void setValues(const QString &word,
                   const QString &phonetic,
                   const QString &wordType,
                   const QString &audioPath,
                   const QString &meaning,
                   const QString &example);

    QString word() const;
    QString phonetic() const;
    QString wordType() const;
    QString audioPath() const;
    QString meaning() const;
    QString example() const;

private slots:
    void onAcceptClicked();

private:
    bool validateInput(const QString &word,
                       const QString &meaning,
                       const QString &phonetic,
                       const QString &wordType,
                       const QString &audioPath) const;

    Ui::WordEditorDialog *ui = nullptr;
    QPushButton *m_okButton = nullptr;
};
