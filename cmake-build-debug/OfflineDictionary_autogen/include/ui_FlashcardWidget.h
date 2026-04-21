/********************************************************************************
** Form generated from reading UI file 'FlashcardWidget.ui'
**
** Created by: Qt User Interface Compiler version 6.10.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FLASHCARDWIDGET_H
#define UI_FLASHCARDWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_FlashcardWidget
{
public:
    QVBoxLayout *verticalLayout;
    QProgressBar *m_progress;
    QFrame *m_card;
    QVBoxLayout *cardLayout;
    QSpacerItem *topSpacer;
    QLabel *m_lblWord;
    QLabel *m_lblPhonetic;
    QFrame *m_divider;
    QLabel *m_lblAnswer;
    QSpacerItem *bottomSpacer;
    QPushButton *m_btnShow;
    QWidget *m_ratingPanel;
    QHBoxLayout *ratingLayout;

    void setupUi(QWidget *FlashcardWidget)
    {
        if (FlashcardWidget->objectName().isEmpty())
            FlashcardWidget->setObjectName("FlashcardWidget");
        FlashcardWidget->resize(600, 460);
        FlashcardWidget->setMinimumSize(QSize(520, 400));
        verticalLayout = new QVBoxLayout(FlashcardWidget);
        verticalLayout->setSpacing(12);
        verticalLayout->setObjectName("verticalLayout");
        verticalLayout->setContentsMargins(16, 12, 16, 16);
        m_progress = new QProgressBar(FlashcardWidget);
        m_progress->setObjectName("m_progress");
        m_progress->setMinimumSize(QSize(0, 8));
        m_progress->setMaximumSize(QSize(16777215, 8));
        m_progress->setValue(0);
        m_progress->setTextVisible(true);

        verticalLayout->addWidget(m_progress);

        m_card = new QFrame(FlashcardWidget);
        m_card->setObjectName("m_card");
        m_card->setFrameShape(QFrame::Shape::StyledPanel);
        cardLayout = new QVBoxLayout(m_card);
        cardLayout->setSpacing(10);
        cardLayout->setObjectName("cardLayout");
        cardLayout->setContentsMargins(32, 32, 32, 32);
        topSpacer = new QSpacerItem(0, 20, QSizePolicy::Policy::Minimum, QSizePolicy::Policy::Expanding);

        cardLayout->addItem(topSpacer);

        m_lblWord = new QLabel(m_card);
        m_lblWord->setObjectName("m_lblWord");
        m_lblWord->setAlignment(Qt::AlignmentFlag::AlignCenter);

        cardLayout->addWidget(m_lblWord);

        m_lblPhonetic = new QLabel(m_card);
        m_lblPhonetic->setObjectName("m_lblPhonetic");
        m_lblPhonetic->setAlignment(Qt::AlignmentFlag::AlignCenter);

        cardLayout->addWidget(m_lblPhonetic);

        m_divider = new QFrame(m_card);
        m_divider->setObjectName("m_divider");
        m_divider->setFrameShape(QFrame::Shape::HLine);

        cardLayout->addWidget(m_divider);

        m_lblAnswer = new QLabel(m_card);
        m_lblAnswer->setObjectName("m_lblAnswer");
        m_lblAnswer->setAlignment(Qt::AlignmentFlag::AlignCenter);
        m_lblAnswer->setWordWrap(true);

        cardLayout->addWidget(m_lblAnswer);

        bottomSpacer = new QSpacerItem(0, 20, QSizePolicy::Policy::Minimum, QSizePolicy::Policy::Expanding);

        cardLayout->addItem(bottomSpacer);


        verticalLayout->addWidget(m_card);

        m_btnShow = new QPushButton(FlashcardWidget);
        m_btnShow->setObjectName("m_btnShow");
        m_btnShow->setMinimumSize(QSize(160, 40));
        m_btnShow->setMaximumSize(QSize(16777215, 40));

        verticalLayout->addWidget(m_btnShow, 0, Qt::AlignHCenter);

        m_ratingPanel = new QWidget(FlashcardWidget);
        m_ratingPanel->setObjectName("m_ratingPanel");
        ratingLayout = new QHBoxLayout(m_ratingPanel);
        ratingLayout->setSpacing(6);
        ratingLayout->setObjectName("ratingLayout");
        ratingLayout->setContentsMargins(0, 0, 0, 0);

        verticalLayout->addWidget(m_ratingPanel);


        retranslateUi(FlashcardWidget);

        QMetaObject::connectSlotsByName(FlashcardWidget);
    } // setupUi

    void retranslateUi(QWidget *FlashcardWidget)
    {
        FlashcardWidget->setWindowTitle(QCoreApplication::translate("FlashcardWidget", "Flashcards", nullptr));
        m_progress->setStyleSheet(QCoreApplication::translate("FlashcardWidget", "QProgressBar{background:#C8E6C9;border-radius:4px;border:none;}QProgressBar::chunk{background:#2E7D32;border-radius:4px;}", nullptr));
        m_card->setStyleSheet(QCoreApplication::translate("FlashcardWidget", "QFrame{background:#FFFFFF;border:1.5px solid #C8E6C9;border-radius:12px;}", nullptr));
        m_lblWord->setText(QCoreApplication::translate("FlashcardWidget", "No cards loaded.", nullptr));
        m_lblWord->setStyleSheet(QCoreApplication::translate("FlashcardWidget", "color:#2E7D32;font-size:28px;font-weight:bold;border:none;background:transparent;", nullptr));
        m_lblPhonetic->setText(QString());
        m_lblPhonetic->setStyleSheet(QCoreApplication::translate("FlashcardWidget", "color:#607862;font-size:14px;border:none;background:transparent;", nullptr));
        m_divider->setStyleSheet(QCoreApplication::translate("FlashcardWidget", "background:#C8E6C9;border:none;", nullptr));
        m_lblAnswer->setText(QString());
        m_lblAnswer->setStyleSheet(QCoreApplication::translate("FlashcardWidget", "color:#1B2B1C;font-size:14px;border:none;background:transparent;", nullptr));
        m_btnShow->setText(QCoreApplication::translate("FlashcardWidget", "Show Answer", nullptr));
    } // retranslateUi

};

namespace Ui {
    class FlashcardWidget: public Ui_FlashcardWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FLASHCARDWIDGET_H
