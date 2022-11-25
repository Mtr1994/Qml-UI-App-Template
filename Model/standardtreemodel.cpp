#include "standardtreemodel.h"

StandardTreeModel::StandardTreeModel(QObject *parent)
    : QStandardItemModel{parent}
{
    appendRow(new QStandardItem("一年级"));
    item(0)->appendRow(new QStandardItem("张三"));

    appendRow(new QStandardItem("二年级"));
    item(1)->appendRow(new QStandardItem("李四"));

    appendRow(new QStandardItem("三年级"));
}
