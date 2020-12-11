#ifndef CARD_H
#define CARD_H

#include <QObject>
#include <string>
#include <QDebug>
#include <QPoint>


using namespace std;

 class Card
{


public:

    explicit Card(string name, int cost, string imgPath);

    void setName(string name);
    string getName();
    void setCost(int cost);
    int getCost();
    string GetImgPath(string path);
    void SetImgPath();

signals:
    void nameChanged();
    void costChanged();

private:

    string name;
    int cost;
    string imgPath;


};

#endif // CARD_H
