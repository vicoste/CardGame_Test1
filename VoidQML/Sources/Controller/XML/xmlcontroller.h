#ifndef XMLCONTROLLER_H
#define XMLCONTROLLER_H

#include <string>
#include <QDebug>
#include <iostream>
#include <fstream>
#include <QFile>

#include "Sources/Model/card.h"

using namespace std;


class XMLController
{
public:
    XMLController(char* path);

    vector<Card> * loadCards();
    bool writeCard(Card card);



private:

    int readPV(QStringList listeAttributs);
    int readATK(QStringList listeAttributs);
    int readRIP(QStringList listeAttributs);
    int readCOST(QStringList listeAttributs);
    Card readCard(QTextStream *in);
    char* path;
};

#endif // XMLCONTROLLER_H
