import QtQuick 2.0

Item {

    property string color: "white"



    Rectangle{
        color:color
        anchors.fill:parent

        QCard{
            id : card1
            imgPath: Ccard.cost
            height: parent.height /4
            width: parent.width/4
            anchors.right: parent.right
            anchors.top: parent.top

        }

        QCard{
            id : card2
            imgPath: "img/res/img/soldier2.png"
            height: parent.height /4
            width: parent.width/4
            anchors.right: parent.right
             anchors.top: card1.bottom

        }

        QCard{
            imgPath: "img/res/img/soldier3.png"
            id : card3
            height: parent.height /4
            width: parent.width/4
            anchors.right: parent.right
             anchors.top: card2.bottom

        }
    }
}
