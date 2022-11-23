#ifndef STANDARDTABLEMODEL_H
#define STANDARDTABLEMODEL_H

#include <qqml.h>
#include <QAbstractTableModel>

struct Student {
    QString name;
    short sex;
    int age;
    QString nativeplace;
    QString preference;
};

class StandardTableModel : public QAbstractTableModel
{
    Q_OBJECT
    QML_ELEMENT
    QML_ADDED_IN_MINOR_VERSION(1)

public:
    enum TableItemRole { STUDENT_NAME = Qt::DisplayRole + 1, STUDENT_SEX, STUDENT_AGE, STUDENT_NATIVE_PLACE, STUDENT_PREFERENCE};
    explicit StandardTableModel(QObject *parent = nullptr);
    ~StandardTableModel();

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    QHash <int, QByteArray> roleNames() const override;
    QModelIndex index(int row, int column, const QModelIndex &parent) const override;

private:
    QList <Student> mModelData;
    QHash<int, QByteArray> mRoleName;
};

#endif // STANDARDTABLEMODEL_H
