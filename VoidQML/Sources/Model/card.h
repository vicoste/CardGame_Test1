#ifndef CARD_H
#define CARD_H

#include <QObject>
#include <string>



using namespace std;

 class Card : public QObject
{
    Q_OBJECT
     Q_PROPERTY(type name READ getName WRITE setName NOTIFY nameChanged)
     Q_PROPERTY(int cost READ getCost WRITE setCost NOTIFY costChanged)

public:
    Card();//string name, int cost, string imgPath);

    void setName(string name);
    string getName();
    void setCost(int cost);
    int getCost();
    //string GetImgPath(string path);
    //void SetImgPath();

signals:
    void nameChanged();
    void costChanged();

private:

    /*string name;
    int cost;
    string imgPath;*/


};

#endif // CARD_H
