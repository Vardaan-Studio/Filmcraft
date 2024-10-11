
#include <QGuiApplication>
#include <QQmlApplicationEngine>

// Include the generated QRC file
#include "resources.qrc" // Include your resource file

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/Main.qml"))); // Ensure this matches your QML file name
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
