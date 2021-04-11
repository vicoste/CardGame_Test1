import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.1
import "TestCreate.js" as Js

Window {
    id: appWindow
    width: 1600
    height: 900
    visible: true
    title: qsTr("Hello World")
    //color : "yellow"
    minimumWidth: 960
    minimumHeight: 540
    maximumWidth: 1920
    maximumHeight: 1080

    //Component.onCompleted: mycard.test()
    onWidthChanged: height = width *( maximumHeight/maximumWidth)
    onHeightChanged: width = height *( maximumWidth/maximumHeight)

    Rectangle{

        id:sideMenu
        height: parent.height
        width: 200
        color :"white"
        visible: true

        Button{
            id: bpjouer
            text: "JOUER"
            onClicked: load.source = "QBoard.qml"
        }


        Button{
            id:bpDeck
            text: "DECKBUILDER"
            anchors.top: bpjouer.bottom
            onClicked: load.source = "QDeckBuilder.qml"
        }


        Button{
            id:bpCard
            text: "CARD CREATOR"
            anchors.top: bpDeck.bottom
            onClicked: load.source = "QCardCreator.qml"

        }

        Button{
            id:bpTEST
            text: "TEST"
            anchors.top: bpCard.bottom
            onClicked: load.source = "QTest.qml"
        }



    }

    Image {
        id: img
        source: "qrc:/img/res/img/epix.jpg"

      anchors.left: sideMenu.right
      width: parent.width - sideMenu.width
      height: parent.height

        visible: true
    Loader{
        id: load
        anchors.fill: parent

    }
}


    /*  Timer{
            running: true
            interval: 2000
            onTriggered: txt.text = "changement"
        }*/

}
