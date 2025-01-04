#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/ui/App.qml")));  // This should be loaded only once
    if (engine.rootObjects().isEmpty()) {
        return -1;  // Exit if the QML file cannot be loaded
    }

    return a.exec();
}
