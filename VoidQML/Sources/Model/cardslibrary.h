#ifndef CARDSLIBRARY_H
#define CARDSLIBRARY_H

#include "card.h"
#include "Sources/Controller/XML/xmlcontroller.h"

/**
 * The Singleton class defines the `GetInstance` method that serves as an
 * alternative to constructor and lets clients access the same instance of this
 * class over and over.
 */
class CardsLibrary
{
    /**
        * The Singleton's constructor should always be private to prevent direct
        * construction calls with the `new` operator.
        */

    protected:
    CardsLibrary();

    static CardsLibrary *cardsLibrary_;
    std::vector<Card> *cards_;


public:

    /**
     * Singletons should not be cloneable.
     */
    CardsLibrary(CardsLibrary &other) = delete;
    /**
     * Singletons should not be assignable.
     */
    void operator=(const CardsLibrary &) = delete;
    /**
     * This is the static method that controls the access to the singleton
     * instance. On the first run, it creates a singleton object and places it
     * into the static field. On subsequent runs, it returns the client existing
     * object stored in the static field.
     */
 static CardsLibrary *GetInstance();

    Card GetCard(int index);


    void update();

};


#endif // CARDSLIBRARY_H
