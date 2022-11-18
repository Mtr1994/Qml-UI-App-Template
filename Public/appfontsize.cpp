#include "appfontsize.h"

#include <QFontMetrics>
#include <QRect>

// test
#include <QDebug>

AppFontSize::AppFontSize(QObject *parent)
    : QObject { parent }
{
    init();
}

void AppFontSize::init()
{
    mPointSize = 9;

    QFont font("Microsoft YaHei", mPointSize);
    QFontMetrics metrics(font);

    mFontWidth = metrics.height();

    mSmallRadius = 3;
}

uint16_t AppFontSize::fontWidth() const
{
    return mFontWidth;
}

uint16_t AppFontSize::pointSize() const
{
    return mPointSize;
}

uint16_t AppFontSize::smallRadius() const
{
    return mSmallRadius;
}
