import QtQuick 2.0

Item {

    property string color: "white"
    //width:1000// parent.height
    //height: 800//parent.width
    anchors.fill:parent


    Rectangle{
        id:rectRed

         //anchors.left: sideMenu.right
        // anchors.top: it.top

        height: parent.height
        width: parent.width /2
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

}
