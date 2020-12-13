#include "cardslibrary.h"

CardsLibrary* CardsLibrary::cardsLibrary_= nullptr;;

CardsLibrary::CardsLibrary()
{
    XMLController *xcon = new XMLController(":/cards/res/cards/everyCards.xml");

    cards_ = xcon->loadCards();
}

CardsLibrary *CardsLibrary::GetInstance()
{
    /**
         * This is a safer way to create an instance. instance = new Singleton is
         * dangeruous in case two instance threads wants to access at the same time
         */
        if(cardsLibrary_==nullptr){
            cardsLibrary_ = new CardsLibrary();
        }
        return cardsLibrary_;
}

Card CardsLibrary::GetCard(int index)
{
    return cards_->at(index);
}
