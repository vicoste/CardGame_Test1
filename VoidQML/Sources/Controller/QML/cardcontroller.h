#ifndef CARDCONTROLLER_H
#define CARDCONTROLLER_H

#include <QObject>
#include <string>
#include <QDebug>
#include <QPoint>

#include "Sources/Model/card.h"
#include "Sources/Model/cardslibrary.h"

class CardController : public QObject
{
    Q_OBJECT
public:
    CardController(QObject *parent = 0);

    Q_INVOKABLE void test();
    Q_INVOKABLE int testreturn();
    Q_INVOKABLE void testenvoi(int c);

   /*Q_INVOKABLE int getCost(Card card);
    Q_INVOKABLE int getPv(Card card);
    Q_INVOKABLE string getName(Card card);
*/
    Q_INVOKABLE int requestCardCost(int cardID);
    Q_INVOKABLE QString requestCardName(int cardID);

private :
    int cost;
};

#endif // CARDCONTROLLER_H
