import QtQuick 2.15  
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Qt.labs.platform 1.1

Item {
    visible: true
    width: 400          
    height: 375

    // Main background color
    Rectangle {
        id: chromaKeyBackground
        color: "#000000"  // Set the background color
        anchors.fill: parent
    }

    // Chroma Key Settings Popup
    Popup {
        id: chromaKeyPopup
        width: 350
        height: 450
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape
        background: Rectangle { color: "transparent" } // Set background to transparent to avoid borders
        Component.onCompleted: chromaKeyPopup.open()

        Rectangle {
            color: "#000000"  // Set inner background color
            anchors.fill: parent
            border.width: 0  // Remove any border if present
        }

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 0  // Set margins to zero
            spacing: 20

            RowLayout {
                spacing: 50
                CheckBox {
                    id: chromaKeySettingsCheckBox
                    text: "Chroma Key"
                }
            }

            Button {
                text: "Select Color"
                enabled: chromaKeySettingsCheckBox.checked
                onClicked: colorDialog.open()
            }
            ColorDialog {
                id: colorDialog
                title: "Select Color"
                onAccepted: {
                    selectedColor.color = colorDialog.color
                    chromaKeyBackground.color = colorDialog.color
                }
            }
            Rectangle {
                id: selectedColor
                width: 50
                height: 13
                color: "transparent"
                border.color: "white"
                border.width: 1
                Layout.alignment: Qt.AlignHCenter
                enabled: chromaKeySettingsCheckBox.checked
            }

            RowLayout {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter
                Label {
                    text: "Offset:"
                    enabled: chromaKeySettingsCheckBox.checked
                }
                Slider {
                    id: offsetSlider
                    from: -100
                    to: 100
                    stepSize: 1
                    enabled: chromaKeySettingsCheckBox.checked
                    onValueChanged: offsetLabel.text = value.toFixed(0)
                }
                Label {
                    id: offsetLabel
                    text: "0"
                    enabled: chromaKeySettingsCheckBox.checked
                }
            }

            RowLayout {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter
                Label {
                    text: "Tolerance:"
                    enabled: chromaKeySettingsCheckBox.checked
                }
                Slider {
                    id: toleranceSlider
                    from: -100
                    to: 100
                    stepSize: 1
                    enabled: chromaKeySettingsCheckBox.checked
                    onValueChanged: toleranceLabel.text = value.toFixed(0)
                }
                Label {
                    id: toleranceLabel
                    text: "0"
                    enabled: chromaKeySettingsCheckBox.checked
                }
            }

            RowLayout {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter
                Label {
                    text: "Edge thickness:"
                    enabled: chromaKeySettingsCheckBox.checked
                }
                Slider {
                    id: edgethicknessSlider
                    from: -100
                    to: 100
                    stepSize: 1
                    enabled: chromaKeySettingsCheckBox.checked
                    onValueChanged: edgethicknessLabel.text = value.toFixed(0)
                }
                Label {
                    id: edgethicknessLabel
                    text: "0"
                    enabled: chromaKeySettingsCheckBox.checked
                }
            }

            RowLayout {
                spacing: 10
                Layout.alignment: Qt.AlignHCenter
                Label {
                    text: "Edge feather:"
                    enabled: chromaKeySettingsCheckBox.checked
                }
                Slider {
                    id: edgefeatherSlider
                    from: -100
                    to: 100
                    stepSize: 1
                    enabled: chromaKeySettingsCheckBox.checked
                    onValueChanged: edgefeatherLabel.text = value.toFixed(0)
                }
                Label {
                    id: edgefeatherLabel
                    text: "0"
                    enabled: chromaKeySettingsCheckBox.checked
                }
            }

            CheckBox {
                id: alphaChannelSettingCheckBox
                text: "Alpha Channel"
                enabled: chromaKeySettingsCheckBox.checked
            }

            Button {
                text: "OK"
                Layout.alignment: Qt.AlignRight
                onClicked: chromaKeyPopup.close()
            }
        }
    }
}
