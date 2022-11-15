#include "appfontsize.h"

#include <QFontMetricsF>
#include <QRectF>

// test
#include <QDebug>

AppFontSize::AppFontSize(QObject *parent)
    : QObject { parent }
{
    init();
}

void AppFontSize::init()
{
    QFont font("Microsoft YaHei", 9);
    QFontMetricsF metrics(font);
    QRectF fontRect = metrics.boundingRect("国");

    mFontWidth = fontRect.width();

    qDebug() << "FontWidth " << mFontWidth;
}

float AppFontSize::fontWidth() const
{
    return mFontWidth;
}
