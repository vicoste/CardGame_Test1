#include "xmlcontroller.h"


XMLController::XMLController(char* path)
{
    this->path = path;
}

std::vector<Card> *XMLController::loadCards(){

    vector<Card> *liste = new vector<Card>;
    Q_INIT_RESOURCE(qml);
    QFile file(path);

    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) return liste;

     QTextStream in(&file);
      while (!in.atEnd()) {
           liste->push_back(readCard(&in));
      }


      return liste;

}

int XMLController::readPV(QStringList listeAttributs)
{
   QString val = "";
    for (int i =0 ; i<listeAttributs.length() ;i++ ) {
        if(listeAttributs.at(i).contains("pv")){
            val = listeAttributs.at(i).mid(4);
            val.chop(1);
            break;
        }
    }

    if(val == "") return -1;
    else return val.toInt();
}

int XMLController::readATK(QStringList listeAttributs)
{
    QString val = "";
     for (int i =0 ; i<listeAttributs.length() ;i++ ) {
         if(listeAttributs.at(i).contains("atk")){
             val = listeAttributs.at(i).mid(5);
             val.chop(1);
             break;
         }
     }

     if(val == "") return -1;
     else return val.toInt();
}

int XMLController::readRIP(QStringList listeAttributs)
{
    QString val = "";
     for (int i =0 ; i<listeAttributs.length() ;i++ ) {
         if(listeAttributs.at(i).contains("rip")){
             val = listeAttributs.at(i).mid(5);
             val.chop(1);
             break;
         }
     }

     if(val == "") return -1;
     else return val.toInt();
}

int XMLController::readCOST(QStringList listeAttributs)
{
    QString val = "";
     for (int i =0 ; i<listeAttributs.length() ;i++ ) {
         if(listeAttributs.at(i).contains("cost")){
             val = listeAttributs.at(i).mid(6);
             val = val.remove('>');
             val.chop(1);
             //qDebug()<<val;
             break;
         }
     }

     if(val == "") return -1;
     else return val.toInt();
}

Card XMLController::readCard(QTextStream *in){

    int pv, atk, rip, cost;
    QString name, desc, img;

   // qDebug() <<"nouvelle carte";
    QString line = in->readLine();

    //recupération des attributs
     QStringList liste = line.split(" ");
    pv = readPV(liste);
    atk = readATK(liste);
    rip = readRIP(liste);
    cost = readCOST(liste);
    // qDebug() <<"pv "<<pv<<"atk"<<atk<<" rip "<<rip<<" cost "<<cost;

    //recupération du nom
    name = in->readLine().trimmed().mid(6) ;
    name.chop(7);

    //récupération de la description
    desc =in->readLine().trimmed().mid(13);
    desc.chop(14);

    //récuperation de l'image
    img = in->readLine().trimmed().mid(7);
    img.chop(8);

    //va jusqu'a la fin de la carte
    while (!line.contains("</card>")) {

       // qDebug() <<line;
        line = in->readLine();
    }



    Card *card = new Card(name,pv, atk, rip, cost,desc,img);

    return *card;
}


