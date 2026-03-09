import QtQuick
import MyTetris

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

