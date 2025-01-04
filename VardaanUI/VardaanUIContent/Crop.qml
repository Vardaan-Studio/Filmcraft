import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: rectangle
    width: 1009
    height: 800
    color: "#1d262f"  // Background color

    ColumnLayout {
        x: 10
        y: 0
        width: 991
        height: 55
        anchors.margins: 20
        anchors.leftMargin: 0
        anchors.rightMargin: -7
        anchors.topMargin: 0
        anchors.bottomMargin: 708

        // Tabs (Crop and Pan & Zoom)
        RowLayout {
            width: parent.width
            spacing: 20

            Label {
                text: "Crop"
                font.pixelSize: 18
                color: "#00FFCC"
                Layout.alignment: Qt.AlignLeft
            }

            Label {
                text: "Pan & Zoom"
                font.pixelSize: 18
                color: "white"
                Layout.alignment: Qt.AlignLeft
            }
        }
        Rectangle {
            width: parent.width   // makes the line take the full width of its parent
            height: 2           // height for the line, usually 1 pixel
            color: "black"        // color of the line, can be customized
        }
   }


    Rectangle {
        id: cropContainer
        x: 371
        y: 69
        width: 291
        height: 529
        color: "black"
        border.color: "#00FFCC"
        border.width: 1
        Layout.alignment: Qt.AlignHCenter
        Layout.topMargin: 20

        // Crop grid overlay
        Grid {
            columns: 2
            rows: 3
            anchors.fill: parent
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            rotation: 0.032
            Repeater {
                model: 2
                Rectangle {
                    width: parent.width
                    height: 1
                    color: "#00FFCC"
                }
            }
            Repeater {
                model: 2
                Rectangle {
                    width: 1
                    height: parent.height
                    color: "#00FFCC"
                }
            }
        }
    }

    Image {
        id: stepBack
        x: 21
        y: 618
        width: 30
        height: 25
        source: "images/step-back.png"
        fillMode: Image.PreserveAspectFit

    }

    Image {
        id: stepForward
        x: 75
        y: 618
        width: 30
        height: 25
        source: "images/step-forward.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: stop
        x: 164
        y: 618
        width: 30
        height: 25
        source: "images/stop.png"
        fillMode: Image.PreserveAspectFit
    }
    Label {
        text: "00:00:00"
        color: "white"
        font.pixelSize: 20
        Layout.alignment: Qt.AlignVCenter
        x:230
        y:618
        height: 25
    }
    Slider {
        id: playbackSlider
        width: 550
        x:330
        y:618
        height: 25

        from: 0
        to: 67 // Example for 1:07 minute (67 seconds)
    }
    Label {
        text: "00:00:00"
        color: "white"
        font.pixelSize: 20
        Layout.alignment: Qt.AlignVCenter
        x:900
        y:616

    }
    Label {
        text: "Ratio:"
        color: "white"
        font.pixelSize: 20
        x:30
        y:680
    }
    ComboBox {
        id: ratioComboBox
        model: ["9:16", "16:9", "4:3", "1:1"]
        currentIndex: 0
        font.pixelSize: 16
        background: Rectangle { color: "#121b24" }
        contentItem: Text { text: ratioComboBox.currentText; color: "white" }
        x:100
        y:680
        width:150
        height: 30
        topPadding:8
        leftPadding:10
    }
    TextField {
        id: widthInput
        placeholderText: "1080"
        width: 90
        font.pixelSize: 16
        background: Rectangle { color: "#121b24" }
        color:"white"
        x:280
        y:680
        height: 30

    }
    Label {
        text: "X"
        color: "white"
        font.pixelSize: 16
        x:380
        y:680
    }
    TextField {
        id: heightInput
        placeholderText: "1920"
        width: 90
        font.pixelSize: 16
        color: "white"
        background: Rectangle { color: "#121b24" }
        x:400
        y:680
    }
    Rectangle {
        width: parent.width   // makes the line take the full width of its parent
        height: 2            // height for the line, usually 1 pixel
        color: "black"    // color of the line, can be customized
        y:730
    }
    Button {
        text: "RESET"
        height: 40
        width: 100
        leftPadding: 40
        topPadding: 10
        x:20
        y:740
        background: Rectangle {
            color: "black"
            radius: 20
            border.color: "#ff4500"
            border.width: 2
        }
        contentItem: Text { text: "RESET"; color: "white"; font.pixelSize: 16; anchors.centerIn: parent }
    }

    Button {
        text: "OK"
        height: 40
        width: 100
        leftPadding: 65
        topPadding: 10
        x:700
        y:740
        background: Rectangle {
            color: "#ff4500"
            radius: 20
            border.color: "#ff4500"
            border.width: 2
        }
        contentItem: Text { text: "OK"; color: "white"; font.pixelSize:16;anchors.centerIn: parent }
    }
    Button {
        text: "CANCEL"
        height: 40
        width: 100
        leftPadding: 30
        topPadding: 10
        x:850
        y:740
        background: Rectangle {
            color: "black"
            radius: 20
            border.color: "#ff4500"
            border.width: 2
        }
        contentItem: Text { text: "CANCEL"; color: "white"; font.pixelSize: 16; anchors.centerIn: parent }
    }

    Image {
        id: play
        x: 117
        y: 618
        width: 24
        height: 25
        source: "images/play.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: play1
        x: 117
        y: 618
        width: 31
        height: 25
        source: "images/play.png"
        fillMode: Image.PreserveAspectFit
    }



}
