#include "SearchWidget.h"
#include "ui_SearchWidget.h"
#include <QListWidgetItem>
#include <QAbstractItemView>

/* Completer popup, history list, submit signals. */
SearchWidget::SearchWidget(QWidget *parent)
    : QWidget(parent), ui(new Ui::SearchWidget)
{
    ui->setupUi(this);

    m_model     = new QStringListModel(this);
    m_completer = new QCompleter(m_model, this);
    m_completer->setCaseSensitivity(Qt::CaseInsensitive);
    m_completer->setFilterMode(Qt::MatchStartsWith);
    m_completer->setCompletionMode(QCompleter::PopupCompletion);
    m_completer->setMaxVisibleItems(12);
    m_completer->popup()->setStyleSheet(
        "QListView {"
        "  background: #FFFFFF;"
        "  border: 1px solid #D4E2DE;"
        "  border-radius: 8px;"
        "  padding: 4px;"
        "  color: #1D312D;"
        "}"
        "QListView::item {"
        "  padding: 7px 9px;"
        "  color: #1D312D;"
        "  background: #FFFFFF;"
        "  border-radius: 6px;"
        "}"
        "QListView::item:hover {"
        "  background: #F0F8F6;"
        "  color: #1E5F57;"
        "}"
        "QListView::item:selected {"
        "  background: #DDF2EE;"
        "  color: #0F766E;"
        "  font-weight: 600;"
        "}"
    );
    ui->m_input->setCompleter(m_completer);

    connect(ui->m_input, &QLineEdit::textEdited,
            this, &SearchWidget::queryChanged);

    connect(ui->m_input, &QLineEdit::returnPressed, this, [this]{
        emit wordSubmitted(ui->m_input->text().trimmed());
    });

    connect(ui->m_searchBtn, &QPushButton::clicked, this, [this]{
        emit wordSubmitted(ui->m_input->text().trimmed());
    });

    connect(ui->m_historyList, &QListWidget::itemActivated, this,
            [this](QListWidgetItem *item){
        if (!item) return;
        const QString text = item->text().trimmed();
        if (text.isEmpty()) return;
        ui->m_input->setText(text);
        emit wordSubmitted(text);
    });

    connect(m_completer, QOverload<const QString &>::of(&QCompleter::activated),
            this, &SearchWidget::onActivated);
}

SearchWidget::~SearchWidget()
{
    delete ui;
}

/* Update autocomplete word list from prefix search. */
void SearchWidget::setSuggestions(const QVector<DictWord> &words)
{
    m_currentSuggestions = words;
    QStringList list;
    list.reserve(words.size());
    for (const DictWord &w : words)
        list << QString::fromUtf8(w.word);
    m_model->setStringList(list);
}

/* Fill left history list. */
void SearchWidget::setRecentHistory(const QVector<DictWord> &words)
{
    ui->m_historyList->clear();
    for (const DictWord &w : words)
        ui->m_historyList->addItem(QString::fromUtf8(w.word));
}

/* Completer picked a row: emit DictWord if known, else plain submit. */
void SearchWidget::onActivated(const QString &text)
{
    for (const DictWord &w : m_currentSuggestions) {
        if (QString::fromUtf8(w.word).compare(text, Qt::CaseInsensitive) == 0) {
            emit suggestionPicked(w);
            return;
        }
    }
    emit wordSubmitted(text);
}
