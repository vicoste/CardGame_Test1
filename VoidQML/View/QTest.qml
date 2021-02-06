import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 1.4

Item {

     anchors.fill: parent

     GridLayout {
         id: grid
         columns: 3
anchors.fill: parent
Rectangle { color: "red";  //anchors.fill: parent

}
   Rectangle { color: "green";
   }

   Rectangle { color: "cyan"; width: 50; height: 50 }
   Rectangle { color: "magenta"; width: 10; height: 10 }
     }

    Rectangle{
        x: 500
        y: 500
        color : "purple"

        width: 10
        height: 10


        MouseArea{
            anchors.fill:parent
            onClicked: {
                red.width++
                red.height++
            }
        }


    }
   Rectangle{

       width: 500; height: 200
       color: "black"
    Rectangle { id: red;color: "blue"; width: 50; height: 20 ;    Label {
            anchors.centerIn: parent
            text: "Top or left"
            color: "white"


  }}}

}
