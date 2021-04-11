#include "client.h"

Client::Client(QObject *parent) :
    QObject(parent)
{
}

void Client::Connect()
{
    socket = new QTcpSocket(this);
    socket->connectToHost(IP, PORT);

    if(socket->waitForConnected(3000))
    {
        qDebug() << "Connected!";

        // send
        socket->write("2");
        socket->waitForBytesWritten(1000);
        socket->waitForReadyRead(3000);
        qDebug() << "Reading: " << socket->bytesAvailable();

        qDebug() << socket->readAll();

        socket->close();
    }
    else
    {
        qDebug() << "Not connected!";
    }

    // sent

    // got

    // closed
}
