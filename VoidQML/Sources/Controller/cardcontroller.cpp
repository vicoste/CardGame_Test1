#include "cardcontroller.h"

CardController::CardController(QObject *parent): QObject(parent){}

void CardController::test(){
    qDebug() << "hello there cost is : " << this->cost;
}

int CardController::testreturn(){
    return 42;
}

void CardController::testenvoi(int c){
    this->cost = c;
}
