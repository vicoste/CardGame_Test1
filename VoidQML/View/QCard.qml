import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.1

Item {
    property  string id
    property int pv: 5
    property int riposte: 2
    property int cout: 80
    property int attaque: 3
    property string imgPath
    property string name
    property bool hover: false
    property bool vide: false

    property int fontsize :10
    anchors.margins: 10

   MouseArea{
           anchors.fill: parent
           hoverEnabled:true
           onHoveredChanged: hover = !hover
           onClicked: { vide = !vide

                        mycard.testenvoi(96)
               mycard.test()
                    cout = mycard.testreturn()

           }
    }

    Rectangle{

        id: rect
        anchors.fill:parent

        border.width: 5
        border.color:hover ? "green" : "black"
        //color: "black"

        Image {
            anchors.margins: 5
            anchors.fill:parent
            id: img
            source: imgPath
            visible: !vide


        }

        QCardAttribut{
            id:rectPV
            attribut:pv
            height: parent.height /8
            width: parent.width /8
            anchors.right: parent.right
            anchors.top: parent.top
            visible: !vide


        }

        QCardAttribut{
            id:rectRiposte
            attribut: riposte
            height: parent.height /8
            width: parent.width /8
            anchors.right: parent.right
            anchors.top: rectPV.bottom
            visible: !vide


        }


        QCardAttribut{
            id:rectAttaque
            attribut: attaque
            height: parent.height /8
            width: parent.width /8
            anchors.right: parent.right
            anchors.top: rectRiposte.bottom
            visible: !vide


        }


        QCardAttribut{
            id:rectCout
            attribut: cout
            height: parent.height /6
            width: parent.width /6
            anchors.left: parent.left
            anchors.top: parent.top
            visible: !vide


        }

        Text {
            id: nom
            text: qsTr(name)
            //anchors.verticalCenter:parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            font.pointSize: fontsize

        }
        Popup {
               id: popup

              /* anchors.top: parent.top
               anchors.left : parent.right*/
               visible: hover


           }




    }



}
