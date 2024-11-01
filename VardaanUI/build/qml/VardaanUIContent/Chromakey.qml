import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Qt.labs.platform 1.1

Item {
    visible: true
    width: 400
    height: 300

    Button {
        text: "Open Chroma Key Settings"
        onClicked: chromaKeyPopup.open()
    }

    // Custom Chroma Key Settings Dialog
    Popup {
        id: chromaKeyPopup
        width: 300
        height: 300
        modal: true
        focus: true

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 10 // Use margins instead of padding
            spacing: 10

            // Chroma Key Checkbox
            RowLayout {
                spacing: 5
                CheckBox {
                    id: chromaKeyCheckBox
                    text: "Enable Chroma Key"
                }
                Label {
                    text: "Chroma Key"
                }
            }

            // Color Picker
            ColorDialog {
                id: colorDialog
                title: "Select Color"
                onAccepted: selectedColor.color = colorDialog.color
            }

            Button {
                text: "Select Color"
                onClicked: colorDialog.open()
            }

            Rectangle {
                id: selectedColor
                width: 50
                height: 50
                color: "transparent"
                border.color: "black"
                border.width: 1
            }

            // Offset Slider
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

            // Close Button
            Button {
                text: "OK"
                Layout.alignment: Qt.AlignRight
                onClicked: chromaKeyPopup.close()
            }
        }
    }
}
