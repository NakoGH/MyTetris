import QtQuick
import MyTetris
import MyTetrisContent

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "MyTetris"

    Screen01 {
        id: mainScreen

        anchors.centerIn: parent
    }

}

