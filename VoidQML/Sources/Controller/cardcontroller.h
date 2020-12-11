#ifndef CARDCONTROLLER_H
#define CARDCONTROLLER_H

#include <QObject>
#include <string>
#include <QDebug>
#include <QPoint>

class CardController : public QObject
{
    Q_OBJECT
public:
    CardController(QObject *parent = 0);

    Q_INVOKABLE void test();
    Q_INVOKABLE int testreturn();
   Q_INVOKABLE void testenvoi(int c);


private :
    int cost;
};

#endif // CARDCONTROLLER_H
