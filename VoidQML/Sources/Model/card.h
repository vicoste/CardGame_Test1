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

    explicit Card(QString name, int pv, int atk, int rip, int cost, QString desc, QString imgPath);

    string toString();

    int getPv() const;
    void setPv(int value);

    QString getName() const;
    void setName(const QString &value);

    int getCost() const;
    void setCost(int value);

    QString getImgPath() const;
    void setImgPath(const QString &value);

    int getRiposte() const;
    void setRiposte(int value);

    int getAttack() const;
    void setAttack(int value);

    QString getDescription() const;
    void setDescription(const QString &value);

 signals:
    void nameChanged();
    void costChanged();

 private:

    QString name;
    int cost;
    QString imgPath;
    int pv;
    int riposte;
    int attack;
    QString description;

};

#endif // CARD_H
