#ifndef CLIENT_H
#define CLIENT_H
#define PORT 51717
#define IP "192.168.0.44"


#include <QObject>
#include <QTcpSocket>


class Client : public QObject
{
    Q_OBJECT
public:
    explicit Client(QObject *parent = 0);

    void Connect();

signals:

public slots:

private:
    QTcpSocket *socket;

};

#endif // CLIENT_H
