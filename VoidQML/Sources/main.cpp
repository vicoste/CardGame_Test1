#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlEngine>

#include "Sources/Controller/cardcontroller.h"

int main(int argc, char *argv[])
{

    //-----------custom code
/*
    Card *c1 = new Card("c1",1,"img/res/img/soldier1.png");
    Card *c2 = new Card("c2",2,"img/res/img/soldier2.png");
    Card *c3 = new Card("c3",3,"img/res/img/soldier3.png");

   */
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //qmlRegisterType<Card>("CCard",1,0,"Ccard");
    QScopedPointer<CardController> card(new CardController);

    const QUrl url(QStringLiteral("qrc:/View/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.load(url);

    engine.rootContext()->setContextProperty("mycard", card.data());

    return app.exec();
}
