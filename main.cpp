#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFile>
#include <QQmlContext>
#include <QDebug>
#include <QString>

#include "myclass.h"

using namespace std;

QString readAndDisplayText(const QString &filePath) { //чтение из файла и возврат прочитанного значения
    QFile file(filePath);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning("Cannot open file for reading");
        return QString();
    }

    QTextStream in(&file);
    QString content = in.readAll();
    file.close();
    return content;
}

int main(int argc, char *argv[]) {

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("devices", readAndDisplayText("/proc/devices"));
    engine.rootContext()->setContextProperty("cpuinfo", readAndDisplayText("/proc/cpuinfo"));
    engine.rootContext()->setContextProperty("meminfo", readAndDisplayText("/proc/meminfo"));
    engine.rootContext()->setContextProperty("dmesg", readAndDisplayText("/home/maxim/2_KURS/lab1/dmesg.txt"));
    engine.rootContext()->setContextProperty("algoRS", readAndDisplayText("/home/maxim/2_KURS/lab1/algoritm.txt"));

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    MyClass myobj; // объект класса, который передает команды в терминал
    engine.rootContext()->setContextProperty("myobj", &myobj);

    return app.exec();
}
