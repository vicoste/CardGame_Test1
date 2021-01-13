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

int CardController::requestCardCost(int cardID)
{
    return CardsLibrary::GetInstance()->GetCard(cardID).getCost();
}

QString CardController::requestCardName(int cardID)
{
    return CardsLibrary::GetInstance()->GetCard(cardID).getName();
}

int CardController::requestCardAtk(int cardID)
{
    return CardsLibrary::GetInstance()->GetCard(cardID).getAttack();
}

int CardController::requestCardPv(int cardID)
{
    return CardsLibrary::GetInstance()->GetCard(cardID).getPv();
}

int CardController::requestCardRip(int cardID)
{
    return CardsLibrary::GetInstance()->GetCard(cardID).getRiposte();
}

QString CardController::requestCardImg(int cardID)
{
    return CardsLibrary::GetInstance()->GetCard(cardID).getImgPath();
}

int CardController::numberOfCards()
{
    return CardsLibrary::GetInstance()->GetCardsNumber();

}
