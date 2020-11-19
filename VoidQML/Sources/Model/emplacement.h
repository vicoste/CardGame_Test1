#ifndef EMPLACEMENT_H
#define EMPLACEMENT_H




#include "card.h"

class Emplacement
{
public:
    Emplacement();

    int recevoirCarte(Card card);

private:

    Card *Unit;
    Card *Batiment;
    Card *Vehicule;

};

#endif // EMPLACEMENT_H
