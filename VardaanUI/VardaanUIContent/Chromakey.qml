import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Qt.labs.platform 1.1

Item {
    visible: true
    width: 400
    height: 300

    // Main background color (chroma key green)
    Rectangle {
        id: chromaKeyBackground
        color: "#00FF00"
        anchors.fill: parent
    }

    // Central checkbox for main window
    CheckBox {
        id: mainCheckBox
        text: "Enable Feature"
        anchors.centerIn: parent
        background: Rectangle {
            color: "transparent"
            border.color: "black"
            border.width: 1
            radius: 4
        }
        indicator: Rectangle {
            width: 20
            height: 20
            radius: 2
            color: mainCheckBox.checked ? "#00FF00" : "white"
            border.color: "black"
            border.width: 1
        }
    }

    // Button to open chroma key settings popup
    Button {
        text: "Open Chroma Key Settings"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        onClicked: chromaKeyPopup.open()
    }

    // Chroma Key Settings Popup
    Popup {
        id: chromaKeyPopup
        width: 300
        height: 300
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10
            spacing: 10

            // Checkbox for enabling/disabling chroma key in settings
            RowLayout {
                spacing: 5
                CheckBox {
                    id: chromaKeySettingsCheckBox
                    text: "Enable Chroma Key"
                }
                Label {
                    text: "Chroma Key"
                    Layout.alignment: Qt.AlignLeft
                }
            }

            // Color picker button and display rectangle
            Button {
                text: "Select Color"
                onClicked: colorDialog.open()
            }
            ColorDialog {
                id: colorDialog
                title: "Select Color"
                onAccepted: selectedColor.color = colorDialog.color
            }
            Rectangle {
                id: selectedColor
                width: 50
                height: 50
                color: "transparent"
                border.color: "black"
                border.width: 1
                Layout.alignment: Qt.AlignHCenter
            }

            // Offset slider with label for displaying the current value
            Label {
                text: "Offset:"
            }
            RowLayout {
                spacing: 10
                Slider {
                    id: offsetSlider
                    from: -100
                    to: 100
                    stepSize: 1
                    onValueChanged: offsetLabel.text = value.toFixed(0)
                }
                Label {
                    id: offsetLabel
                    text: "0"
                }
            }

            // Close button for the popup
            Button {
                text: "OK"
                Layout.alignment: Qt.AlignRight
                onClicked: chromaKeyPopup.close()
            }
        }
    }
}
