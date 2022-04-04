import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Item {
    id: element1

    width: 300
    height: 600

    Rectangle {
        width: parent.width
        height: parent.height
        id: rectangle1
        color: "#f54ac1"
    Column {
        id: colum1
        width: parent.width
        height: parent.height
        RowLayout {
            id:row1x
            x:0
            y:0
            width: 300
            height: 200
            Rectangle {
                id: reactangle1
                MouseArea {
                                            id: mouseArea
                                            width: 20
                                            height: 20

                    ToolButton {

                        id: button1ool
                        width: 20
                        height: 20
                        onClicked: myAndroid.pop()
//
                        Image {
                            sourceSize.height: 20
                            sourceSize.width: 20
                            source: "../../../Downloads/b2.jpeg"
                            fillMode: Image.PreserveAspectFit

                        }

                    }

                }


            }


//            spacing: 100

        }

        RowLayout {
            id: row2
            width: 300
            height: 150
                Image {
                    anchors.centerIn: parent
                    sourceSize.height: 150
                    sourceSize.width: 150
                    source: "../../../Downloads/c.jpeg"
                    fillMode: Image.PreserveAspectFit
                }
        }

        RowLayout {
            id: row3
            width: 300
            height: 100
            Text {
                anchors.centerIn: parent
                text: "CAR DOOR IS OPENED"
                font.bold: true
                color: "white"
                anchors.verticalCenter: parent.verticalCenter
                Layout.leftMargin: 80
            }
            //                                        spacing: 10

        }

    }

    }


    }
