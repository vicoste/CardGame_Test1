#include "card.h"


Card::Card(QString name, int pv, int atk, int rip, int cost, QString desc, QString imgPath)
{
    this->name = name;
    this->cost = cost;
    this->imgPath = imgPath;
    this->pv = pv;
    this->attack = atk;
    this->description=desc;
    this->riposte = rip;
}



string Card::toString()
{
    return name.toStdString() + " avec un cout de "+ to_string(cost) +" :: "+ description.toStdString();
}

int Card::getPv() const
{
    return pv;
}

void Card::setPv(int value)
{
    pv = value;
}

QString Card::getName() const
{
    return name;
}

void Card::setName(const QString &value)
{
    name = value;
}

int Card::getCost() const
{
    return cost;
}

void Card::setCost(int value)
{
    cost = value;
}

QString Card::getImgPath() const
{
    return imgPath;
}

void Card::setImgPath(const QString &value)
{
    imgPath = value;
}

int Card::getRiposte() const
{
    return riposte;
}

void Card::setRiposte(int value)
{
    riposte = value;
}

int Card::getAttack() const
{
    return attack;
}

void Card::setAttack(int value)
{
    attack = value;
}

QString Card::getDescription() const
{
    return description;
}

void Card::setDescription(const QString &value)
{
    description = value;
}








