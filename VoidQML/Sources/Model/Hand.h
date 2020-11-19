#ifndef HAND_H
#define HAND_H

#include <list>
#include "card.h"



class Hand
{


public:
    Hand();
private:
    std::list<Card> fullDeck;
};

#endif // HAND_H
