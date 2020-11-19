import QtQuick 2.0

Item {

    property int attribut

    anchors.margins: 10

    Rectangle{
        //id:rect
        color:"yellow"
        border.width: 2
        radius: 5
        //
        anchors.fill: parent



        Text {
            id: txt
            text: qsTr(attribut.toString())
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter:parent.verticalCenter
            font.bold: true
            font.pixelSize: 10
        }


    }
}
