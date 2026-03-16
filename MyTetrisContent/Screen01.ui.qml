

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
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 1
        anchors.centerIn: parent

        Column {
            id: column
            width: 200
            height: 400
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

            Rectangle {
                id: hold
                width: Constants.holdWidth
                height: Constants.holdHeight
                color: "#ffffff"
                anchors.right: matrix.left
                anchors.top: matrix.top
                anchors.rightMargin: 0
                anchors.topMargin: 0

                Text {
                    id: holdLabel
                    text: qsTr("HOLD")
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenterOffset: -85
                    anchors.horizontalCenterOffset: -73
                    font.styleName: "Regular"
                    font.family: "Verdana"
                    anchors.centerIn: parent
                }

                Grid {
                    id: holdGrid
                    x: 5
                    y: 40
                    width: 240
                    height: 160
                    rows: 4
                    columns: 6

                    Repeater {
                        id: repeater
                        model: Constants.holdRows * Constants.holdCols

                        Rectangle {
                            id: holdTile
                            width: Constants.rectWidth
                            height: Constants.rectHeight
                            color: "#000000"
                            border.color: "#808080"
                        }
                    }
                }
            }

            Rectangle {
                id: next
                width: Constants.holdWidth
                height: Constants.holdHeight
                color: "#ffffff"
                anchors.left: matrix.right
                anchors.top: matrix.top
                anchors.leftMargin: 0
                anchors.topMargin: 0
                Text {
                    id: nextLabel
                    text: qsTr("NEXT")
                    font.pixelSize: 30
                    horizontalAlignment: Text.AlignHCenter
                    font.styleName: "Regular"
                    font.family: "Verdana"
                    anchors.verticalCenterOffset: -85
                    anchors.horizontalCenterOffset: -73
                    anchors.centerIn: parent
                }

                Grid {
                    id: nextGrid
                    x: 5
                    y: 40
                    width: 240
                    height: 160
                    rows: 4
                    Repeater {
                        id: repeater1
                        model: Constants.holdRows * Constants.holdCols
                        Rectangle {
                            id: nextTile
                            width: Constants.rectWidth
                            height: Constants.rectHeight
                            color: "#000000"
                            border.color: "#808080"
                        }
                    }
                    columns: 6
                }
            }
        }
    }
}
