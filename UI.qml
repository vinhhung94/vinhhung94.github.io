import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import QtQuick.Extras 1.4

Item {
    width: 800
    height: 600
    Rectangle {
        id: rectangle
        x: 225
        y: 0
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

                    colorCode: "violet"

                    sourceImgArrow: "../../../Downloads/arrow.png"
                    sourceImg: "../../../Downloads/b.jpg"
                    name: "BELL IS RINGING"
                }

                ListElement {

                    colorCode: "#f524a6"
                    sourceImgArrow: "../../../Downloads/arrow.png"
                    sourceImg: "../../../Downloads/b.jpg"
                    name: "CAR DOOR IS OPENED"
                }

                ListElement {

                    colorCode: "#34dc27"
                    sourceImgArrow: "../../../Downloads/arrow.png"
                    sourceImg: "../../../Downloads/b.jpg"
                    name: "ACCESS CARD IS GRANTED"
                }

                ListElement {

                    colorCode: "#1c93e7"
                    sourceImgArrow: "../../../Downloads/arrow.png"
                    sourceImg: "../../../Downloads/b.jpg"
                    name: "HOME DOOR IS OPENED"
                }
            }
            delegate: Item {
//                x: 5
                width: 300
                height: 150

//                SwipeDelegate {
//                    id: swipeDelegate
//                    width: 300
//                    height: 150
                        Rectangle {
                            id: rectangle1
                            color: colorCode
                            width: 300
                            height: 150

                        Column {
                            id: colum1
                            width: 300
                            height: 150

                            Row {
                              id: row1
                              width: 300
                              height: 40
                              Button {
                                  id: button1
                                  height: 20
                                  width: 20
                                  Image {
                                      sourceSize.height: parent.height
                                      sourceSize.width: parent.height
                                      source: sourceImgArrow
                                      fillMode: Image.PreserveAspectFit
                                  }

                              }
                              spacing: 10

                            }

                            Row {
                                id: row2
                                width: 300
                                height: 40

                                Button {
                                    id: button2
                                    height: 50
                                    width: 50

                                    Image {
                                        Layout.leftMargin: 100
                                        anchors.verticalCenter: parent.verticalCenter
                                        sourceSize.height: 50
                                        sourceSize.width: 50
                                        source: sourceImg
                                        fillMode: Image.PreserveAspectFit
                                    }

                                }
                                spacing: 10


                            }

                            Row {
                                id: row3
                                width: 300
                                height: 40
                                Text {
                                    text: name
                                    font.bold: true
                                    anchors.verticalCenter: parent.verticalCenter
                                }
                                spacing: 10

                            }



                        }



                        }
//                        spacing: 10


                        //                    }
                        //                }



            }




        }
    }


}
