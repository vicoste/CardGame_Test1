import QtQuick 2.0
import "TestCreate.js" as Js

Item {
    anchors.fill:parent
    id:item1

    property string test: "1"
    property int a : 0
    property int b : 0

    //Component.onCompleted: name = mycard.requestCardName(0)
    Rectangle{
        color: "black"
        height: parent.height/4
        width: parent.width/8

        x: 200
        y: 200

        MouseArea{
            anchors.fill: parent
            onClicked:{

                /*test = mycard.requestCardName(0)
                Js.createSpriteObjects(a,b)
                a = a + (parent.width/8)
                b = b + (parent.height/4)
*/
                Qt.createQmlObject('import QtQuick 2.0; QCard {width: 80; height: 160;x:500;y:500}',
                                                   item1,
                                                   "dynamicSnippet1");
}
        }
    }

    QCard{
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
    }

}
