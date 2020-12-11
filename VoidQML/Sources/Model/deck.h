#ifndef DECK_H
#define DECK_H


#include "card.h"



using namespace std;

class Deck
{
public:
    explicit Deck();

    void shuffle();
    Card draw();
    void addCard(Card card);



private:
    std::list<Card> fullDeck;

};

#endif // DECK_H
