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
    minimumWidth: 800
    minimumHeight: 600


    //Component.onCompleted: mycard.test()



Rectangle{
            id:rectRed

           // anchors.left: it.left
           // anchors.top: it.top

            height: parent.height
            width: parent.width/2
            z:1
           // anchors.bottom: it.bottom
            color: "red"
            visible: true




            QCard{
                id : card1
                //imgPath: "../img/res/img/soldier1.png"
                height: parent.height /4
                width: parent.width/4
                anchors.right: parent.right
                anchors.top: parent.top


            }

            QCard{
                id : card2
                //imgPath: "../img/res/img/soldier2.png"
                height: parent.height /4
                width: parent.width/4
                anchors.right: parent.right
                 anchors.top: card1.bottom

            }

            QCard{
                //imgPath: "../img/res/img/soldier3.png"
                id : card3
                height: parent.height /4
                width: parent.width/4
                anchors.right: parent.right
                 anchors.top: card2.bottom

            }


        }

        Rectangle{
            id: rectBlue
            color: "blue"

            height: parent.height
            width: parent.width/2

            visible: true

            anchors.left: rectRed.right
        }


      /*  Timer{
            running: true
            interval: 2000
            onTriggered: txt.text = "changement"
        }*/

}
