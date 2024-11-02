import QtQuick 2.15
import QtQuick.Controls 2.15
    Rectangle {
        anchors.fill: parent
        color: "#2B2B2B"
        Column {
            anchors.centerIn: parent
            spacing: 20
            height: 350
            width: 400
            // Speed Slider with Value Display
            Row {
                spacing: 10
                Label {
                    text: "Speed:"
                    leftPadding: 17
                    color: "white"
                }
                Slider {
                    id: speedSlider
                    width: 200
                    from: 0.1
                    to: 10.0
                    value: 1.0
                }
                TextField {
                    width: 50
                    text: speedSlider.value.toFixed(2)
                    inputMethodHints: Qt.ImhDigitsOnly
                    readOnly: true
                }
                Label {
                    text: "x"
                    color: "white"
                }
            }
            // Duration Display
            Row {
                spacing: 10
                Label {
                    text: "Duration:"
                    color: "white"
                }
                TextField {
                    width: 150
                    text: "00:00:00:00"
                    color: "#ffffff"
                    background: Rectangle { color: "#1E1E1E"; radius: 4 }
                }
            }
            // Reverse Speed Checkbox
            Row {
                spacing: 10
                Label {
                    text: "Reverse:"
                    leftPadding: 6
                    color: "white"
                }
                CheckBox {
                    text: "Reverse Speed"
                    contentItem: Text {
                        text: "Reverse Speed"
                        leftPadding: 30
                        color: "white"
                    }
                }
            }
            // Ripple Edit Checkbox
            Row {
                spacing: 10
                Label {
                    text: "Ripple:"
                    leftPadding: 14
                    color: "white"
                }
                CheckBox {
                    text: "Ripple Edit"
                    checked: true
                    contentItem: Text {
                        text: "Ripple Edit"
                        leftPadding: 30
                        color: "white"
                    }
                }
            }
            // OK and Cancel Buttons
            Row {
                spacing: 20
                Button {
                    text: "OK"
                    width: 80
                    background: Rectangle {
                        color: "#ffa500"
                        radius: 4
                    }
                    onClicked: {
                        // Add your OK action here
                    }
                }
                Button {
                    width: 80
                    height: 32
                    background: Rectangle {
                        color: "#1E1E1E"
                        border.color: "#ffa500"
                        radius: 4
                    }
                    contentItem: Text {
                        text: "CANCEL"
                        color: "white"
                        font.pixelSize: 14
                        anchors.centerIn: parent
                    }
                    onClicked: {
                        // Add your Cancel action here
                    }
                }
            }
        }
    }
