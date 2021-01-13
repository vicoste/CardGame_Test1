import QtQuick 2.0
import QtQuick.Layouts 1.15
import "TestCreate.js" as Js

Item {
    anchors.fill:parent
    id:item1

    property int nextCardToLoad : 0
    property int cardNumber

    property string test: "1"
    property int a : 0
    property int b : 0



    Component.onCompleted:{

        var  component = Qt.createComponent("QCard.qml");

        cardNumber = mycard.numberOfCards()
        for (let i = 0; i <cardNumber; i++) {

        /* var newObject = Qt.createQmlObject('import QtQuick 2.0; QCard { width: '+item1.width/8+'; height: '+item1.height/4+';x:'+ a +';y:'+b+'}',
                                          item1,
                                        "dynamicSnippet" +i);*/



           var  newObject = component.createObject(grid, { x: a, y: b, width: item1.width/8, height:item1.height/4});


        a = a + newObject.width +10
        //cardToLoad++

        newObject.name = mycard.requestCardName(i)
            newObject.pv = mycard.requestCardPv(i)
            newObject.attaque = mycard.requestCardAtk(i)
            newObject.cout = mycard.requestCardCost(i)
            newObject.riposte = mycard.requestCardRip(i)
            newObject.imgPath = mycard.requestCardImg(i)


        }
    }

    GridLayout{
        id: grid
        columns: 8
        anchors.fill: parent
    }

    Rectangle{
        color: "black"
        height: parent.height/4
        width: parent.width/8

        x: 200
        y: 200

        MouseArea{
            anchors.fill: parent
            onClicked:{
                test1.fontsize++


}
        }
    }

   /* QCard{
        id: c1
        height: parent.height/4
        width: parent.width/8
        name: test
        //pv: test
    }

    QCard{
        id: c2
        height: parent.height/4
        width: parent.width/8
        anchors.left:  c1.right
    }

    QCard{
        id: c3
        height: parent.height/4
        width: parent.width/8
        anchors.left:  c2.right
    }*/

}
