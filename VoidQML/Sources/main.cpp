#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlEngine>

#include "Sources/Model/cardslibrary.h"
#include "Sources/Controller/QML/cardcontroller.h"
#include "Sources/Client/client.h"

int main(int argc, char *argv[])
{
   /* ------TEST CLIENT SERVEUR
    * QCoreApplication a(argc, argv);

        Client cTest;
        cTest.Connect();

        return a.exec();


*/
    /* ----- CORE APPLI
    Card c1 = CardsLibrary::GetInstance()->GetCard(0);
    qDebug() << c1.toString().c_str();

    Card c2 = CardsLibrary::GetInstance()->GetCard(1);
    qDebug() << c2.toString().c_str();

    Card c3 = CardsLibrary::GetInstance()->GetCard(2);
    qDebug() << c3.toString().c_str();

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

    return app.exec();*/
}
