#ifndef STANDARDTREEMODEL_H
#define STANDARDTREEMODEL_H

#include <QObject>
#include <QStandardItemModel>

class StandardTreeModel : public QStandardItemModel
{
    Q_OBJECT
public:
    explicit StandardTreeModel(QObject *parent = nullptr);
};

#endif // STANDARDTREEMODEL_H
