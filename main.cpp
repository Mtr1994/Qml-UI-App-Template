#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "Public/appfontsize.h"
#include "Public/appsignal.h"
#include "Model/standardtablemodel.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QCoreApplication::setAttribute(Qt::AA_UseOpenGLES);

    QGuiApplication app(argc, argv);

    AppFontSize appFontSize;

    QQmlApplicationEngine engine;

    // 字体大小计算类
    engine.rootContext()->setContextProperty("AppFontSize", &appFontSize);

    // 全局信号
    engine.rootContext()->setContextProperty("AppSignal", AppSignal::getInstance());

    // 表格数据模型
    StandardTableModel tableModel;
    engine.rootContext()->setContextProperty("tableModel", &tableModel);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app, [url](QObject *obj, const QUrl &objUrl)
    {
        if (!obj && url == objUrl) QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
