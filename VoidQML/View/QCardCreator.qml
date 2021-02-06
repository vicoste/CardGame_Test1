import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.0
Item {
    property  string id
    property int pv: 5
    property int riposte: 2
    property int cout: 80
    property int attaque: 3
    property string imgPath:"file:///C:/Users/Public/Pictures/Sample Pictures/Desert.jpg"
    property string name
    property bool hover: false
    property bool vide: false
    property bool edit: true

    property int fontsize :10
    anchors.margins: 10

    Button{
        width: 100
        height: 50
          MouseArea{
            anchors.fill: parent
            onClicked: fileDialog.visible = true
          }
    }

    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        folder: shortcuts.home
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrls)

            var str = ""
               for(var i in fileDialog.fileUrls){
                   var url = fileDialog.fileUrls[i]
                   str += Qt.resolvedUrl(url)
               }
           imgPath = str
        }
        onRejected: {
            console.log("Canceled")
            //Qt.quit()
        }
        //Component.onCompleted: visible = true
    }

    Rectangle{

        id: rect
        anchors.fill:parent
        anchors.topMargin: 100
        anchors.bottomMargin: 100

        anchors.leftMargin: parent.width / 4
         anchors.rightMargin: parent.width / 4
       // width: 50
       // height: 50
        border.width: 5
        border.color:hover ? "green" : "black"
        //color: "black"

        MouseArea{
                anchors.fill: parent
                hoverEnabled:true
                onHoveredChanged: hover = !hover
                onClicked: {

                }
         }


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
            editable: true

            MouseArea{
                anchors.fill: parent
                onClicked: parent.attribut = ""
            }



        }

        QCardAttribut{
            id:rectRiposte
            attribut: riposte
            height: parent.height /8
            width: parent.width /8
            anchors.right: parent.right
            anchors.top: rectPV.bottom
            visible: true
            editable: true

            MouseArea{
                anchors.fill: parent
                onClicked:  parent.attribut = ""
            }

        }


        QCardAttribut{
            id:rectAttaque
            attribut: attaque
            height: parent.height /8
            width: parent.width /8
            anchors.right: parent.right
            anchors.top: rectRiposte.bottom
            visible: !vide
            editable: true


            MouseArea{
                anchors.fill: parent
                onClicked:  parent.attribut = ""
            }
        }


        QCardAttribut{
            id:rectCout
            attribut: cout
            height: parent.height /6
            width: parent.width /6
            anchors.left: parent.left
            anchors.top: parent.top
            visible: !vide
            editable:true


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
