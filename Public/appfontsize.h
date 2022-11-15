#ifndef APPFONTSIZE_H
#define APPFONTSIZE_H

#include <QObject>

class AppFontSize : public QObject
{
    Q_OBJECT
    Q_PROPERTY(float fontWidth READ fontWidth CONSTANT);

public:
    explicit AppFontSize(QObject *parent = nullptr);

    void init();

    float fontWidth() const;

signals:

private:
    float mFontWidth = 0;

};

#endif // APPFONTSIZE_H
