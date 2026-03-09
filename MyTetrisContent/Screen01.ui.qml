

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import MyTetris
import QtQuick.Layouts

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#6496ff"

    Row {
        id: tetrion
        width: 943
        height: Constants.gridRows * Constants.rectHeight
        anchors.centerIn: parent

        Grid {
            id: matrix
            width: Constants.rectWidth * Constants.gridCols
            height: Constants.rectHeight * Constants.gridRows
            anchors.centerIn: parent
            rows: Constants.gridRows
            columns: Constants.gridCols

            Repeater {
                model: 200

                Rectangle {
                    id: tile
                    width: Constants.rectWidth
                    height: Constants.rectHeight
                    color: "black"
                    border.color: "gray"
                }
            }
        }
    }
}
