import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12



Item {
    id: element

    width: 300
    height: 600
    Rectangle {
        id: rectangle
        width: 300
        height: 600
        color: "#ffffff"

        ListView {
            id: listView
            x: 0
            y: 0
            width: 300
            height: 600
            layoutDirection: Qt.LeftToRight
            model: ListModel {
                ListElement {
                    colorCode: "#c44af5"
                    sourceImg: "../../../Downloads/b.jpeg"
                    name: "DOOR BELL"
                }

                ListElement {
                    colorCode: "#f54ac1"
                    sourceImg: "../../../Downloads/c.jpeg"
                    name: "CAR DOOR"
                }

                ListElement {
                    colorCode: "#4af54b"
                    sourceImg: "../../../Downloads/g.jpeg"
                    name: "ACCESS CARD"
                }

                ListElement {
                    colorCode: "#4AB5F5"
                    sourceImg: "../../../Downloads/h.jpeg"
                    name: "HOME"
                }
            }
            delegate: /*Item {
                width: 300
                height: 150*/

                            Button {
                                id: myButton
                                width: 300
                                height: 150
                                onClicked: {
                                    loadPage(colorCode);
                                }
                                Rectangle {
                                    width: parent.width
                                    height: parent.height
                                    id: rectangle1
                                    color: colorCode
//                                    layer.effect: DropShadow {
//                                                    transparentBorder: true
//                                                    horizontalOffset: 0
//                                                    verticalOffset: 8
//                                                    }

                                    DropShadow {
                                            anchors.fill: rectangle1
//                                            horizontalOffset: 10
                                            verticalOffset: 145
                                            radius: 8
                                            samples: 12
                                            color: "#80000000"
                                            source: rectangle1
                                        }




                                Column {
                                    id: colum1
                                    width: parent.width
                                    height: parent.height

                                    RowLayout {
                                        id: row2
                                        width: 300
                                        height: 100
                                            Image {
                                                id: bug
                                                anchors.centerIn: parent
                                                sourceSize.height: 50
                                                sourceSize.width: 50
                                                source: sourceImg
                                                fillMode: Image.PreserveAspectFit
                                                smooth: true
//                                                        visible: false
                                            }

//                                            DropShadow {
//                                                    anchors.fill: parent
//                                                    horizontalOffset: 1
//                                                    verticalOffset: 1
//                                                    radius: 0.5
//                                                    samples: 1
////                                                    color: "#80000000"
//                                                    source: sourceImg
//                                                }



                                    }

                                    RowLayout {
                                        id: row3
                                        width: 300
                                        height: 30
//                                        anchors.fill: parent
                                        Text {
                                            text: name
                                            font.bold: true
                                            color: "white"
                                            anchors.centerIn: parent
//                                            Layout.leftMargin: 110

                                        }
//                                        spacing: 10

                                    }

                                }



                                }


            }


        }

    }

    Rectangle {
        id: rectangle2
        x: -233
        y: 166
        width: 200
        height: 200
        color: "#ffffff"
        radius: 43
        border.color: "#ddfcf3"
        border.width: 5
    }

    }

//}
