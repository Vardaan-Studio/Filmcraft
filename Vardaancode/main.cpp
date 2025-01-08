#include <QApplication>
#include <QQmlApplicationEngine>
#include <iostream>

extern "C" {
#include <libavcodec/avcodec.h>
#include <libavutil/version.h>
}

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    std::cout << "FFmpeg Version: " << av_version_info() << std::endl;

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/ui/App.qml")));
    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return app.exec();
}
