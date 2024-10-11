#include "mainwindow.h"

#include <QApplication>
#include <QLocale>
#include <QTranslator>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    // Load the main QML file
    engine.load(QUrl(QStringLiteral("qrc:/App.qml")));

    // Check if the loading failed
    if (engine.rootObjects().isEmpty()) {
        return -1;  // Exit if there was an error
    }

    return app.exec();  // Start the application event loop
}




