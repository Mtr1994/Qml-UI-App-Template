#ifndef APPFONTSIZE_H
#define APPFONTSIZE_H

#include <QObject>

class AppFontSize : public QObject
{
    Q_OBJECT
    Q_PROPERTY(float fontWidth READ fontWidth CONSTANT);
    Q_PROPERTY(float pointSize READ pointSize CONSTANT);
    Q_PROPERTY(float smallRadius READ smallRadius CONSTANT);

public:
    explicit AppFontSize(QObject *parent = nullptr);

    void init();

    uint16_t fontWidth() const;

    uint16_t pointSize() const;

    uint16_t smallRadius() const;

signals:

private:
    uint16_t mFontWidth = 0;

    // 通用字体大小
    uint16_t mPointSize = 0;

    // 小圆角
    uint16_t mSmallRadius = 0;

};

#endif // APPFONTSIZE_H
