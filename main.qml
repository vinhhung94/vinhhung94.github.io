//import QtQuick 2.12
//import QtQuick.Window 2.12

import QtQuick 2.3
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

ApplicationWindow {
    title: qsTr("Hello World")
    width: 300
    height: 600
    visible: true

//    header: ToolBar {
//        RowLayout {
//            anchors.fill: parent
//            ToolButton {
//                text: qsTr("<")
//                onClicked: myAndroid.pop()

//            }
//            Label {
//                text: "Stackview App"
//                elide: Label.ElideRight
////                horizontalAlignment: Qt.AlignHCenter
////                verticalAlignment:  Qt.AlignVCenter
//                Layout.fillWidth: true

//            }
//        }

//    }

    StackView {
        id: myAndroid
        initialItem: starting_page
        anchors.fill: parent
    }

    Component {
        id: starting_page
        StartingPage{}
    }

    Component {
        id: first_page
        FirstPage{}
    }

    Component {
        id: two_page
        TwoPage{}
    }

    Component {
        id: three_page
        ThreePage{}
    }

    Component {
        id: four_page
        FourPage{}
    }

    function loadPage(page) {
        switch (page) {
            case '#c44af5':
                myAndroid.push(first_page);
                break;
            case '#f54ac1':
                myAndroid.push(two_page);
                break;
            case '#4af54b':
                myAndroid.push(three_page);
                break;
            case '#4AB5F5':
                myAndroid.push(four_page);
                break;
    }
  }
}
