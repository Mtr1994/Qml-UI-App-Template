#include "standardtablemodel.h"

StandardTableModel::StandardTableModel(QObject *parent)
    : QAbstractTableModel{parent}
{

    mModelData =
    {
        {"张三", 0, 24, "湖北", "足球"},
        {"李四", 1, 25, "海南", "篮球"},
        {"王五", 0, 26, "北京", "羽毛球"},
        {"赵六", 1, 27, "上海", "棒球"},
        {"吴起", 0, 28, "威海", "橄榄球"},
        {"陈八", 0, 28, "天津", "乒乓球"},
    };
}

StandardTableModel::~StandardTableModel()
{

}

int StandardTableModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid()) return 0;
    return mModelData.count();
}

int StandardTableModel::columnCount(const QModelIndex &parent) const
{
    if (parent.isValid()) return 0;
    return STUDENT_PREFERENCE + 1;
}

QVariant StandardTableModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid()) return QVariant();

    switch (role) {
    case Qt::DisplayRole:
        switch(index.column())
        {
        case STUDENT_NAME:
            return mModelData[index.row()].name;
        case STUDENT_SEX:
            return mModelData[index.row()].sex;
        case STUDENT_AGE:
            return mModelData[index.row()].age;
        case STUDENT_NATIVE_PLACE:
            return mModelData[index.row()].nativeplace;
        case STUDENT_PREFERENCE:
            return mModelData[index.row()].preference;
        default:
            break;
        }
    default:
        break;
    }

    return QVariant();
}

QHash<int, QByteArray> StandardTableModel::roleNames() const
{
    return { {Qt::DisplayRole, "display"} };
}

QModelIndex StandardTableModel::index(int row, int column, const QModelIndex &parent) const
{
    if(!hasIndex(row, column, parent)) return QModelIndex();
    return createIndex(row, column, parent.internalId());
}
