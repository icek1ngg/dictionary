#include "BookmarkWidget.h"
#include "ui_BookmarkWidget.h"

/* Tag filter combo, list, remove button. */
BookmarkWidget::BookmarkWidget(QWidget *parent)
    : QWidget(parent), ui(new Ui::BookmarkWidget)
{
    ui->setupUi(this);

    ui->m_tagFilter->addItem(tr("All tags"));

    connect(ui->m_tagFilter, &QComboBox::currentTextChanged,
            this, [this](const QString &tag){
        emit tagFilterChanged(tag == tr("All tags") ? QString() : tag);
    });

    connect(ui->m_list, &QListWidget::itemActivated,
            this, [this](QListWidgetItem *item){
        int row = ui->m_list->row(item);
        if (row >= 0 && row < m_words.size())
            emit wordSelected(m_words[row]);
    });

    connect(ui->m_list, &QListWidget::itemSelectionChanged, this, [this]{
        ui->m_removeBtn->setEnabled(!ui->m_list->selectedItems().isEmpty());
    });

    connect(ui->m_removeBtn, &QPushButton::clicked, this, [this]{
        const int row = ui->m_list->currentRow();
        if (row < 0 || row >= m_words.size()) return;
        /* MainWindow refreshes list; do not mutate m_words here (async slot order). */
        emit removeRequested(m_words[row].id, activeTagFilter());
    });
}

BookmarkWidget::~BookmarkWidget()
{
    delete ui;
}

/* Replace list from model data. */
void BookmarkWidget::reload(const QVector<DictWord> &words)
{
    m_words = words;
    ui->m_list->clear();
    for (const DictWord &w : words)
        ui->m_list->addItem(QString::fromUtf8(w.word));
    ui->m_removeBtn->setEnabled(false);
}

QString BookmarkWidget::activeTagFilter() const
{
    /* Index 0 is the "All tags" row. */
    if (ui->m_tagFilter->currentIndex() <= 0) return {};
    return ui->m_tagFilter->currentText();
}

/* Rebuild tag dropdown; try to keep previous selection. */
void BookmarkWidget::setTags(const QStringList &tags)
{
    const QString current = ui->m_tagFilter->currentText();
    ui->m_tagFilter->blockSignals(true);
    ui->m_tagFilter->clear();
    ui->m_tagFilter->addItem(tr("All tags"));
    ui->m_tagFilter->addItems(tags);
    int idx = ui->m_tagFilter->findText(current);
    ui->m_tagFilter->setCurrentIndex(idx >= 0 ? idx : 0);
    ui->m_tagFilter->blockSignals(false);
}
