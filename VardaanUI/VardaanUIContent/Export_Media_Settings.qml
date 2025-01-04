import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 

Item {
    id: exportDialog
    visible: true
    width: 600
    height: 500
    
     Rectangle {
        color: "#1f1f1f" // Set the background color to black
        anchors.fill: parent
    }
    
    Column {
        spacing: 20
        padding: 20
        anchors.fill: parent

        // Quality Selection
        Label {
            text: "Select Quality:"
            color: "white"
        }

        ButtonGroup {
    id: qualityGroup
    onCheckedButtonChanged: {
        // Ensure one checkbox is always checked
        if (!qualityGroup.checkedButton) {
            bestCheckBox.checked = true; // Fallback to "Best" if none are selected
        }
    }
}

Row {
    spacing: 20 // Space between the checkboxes
    CheckBox {
        id: bestCheckBox
        ButtonGroup.group: qualityGroup
        contentItem: Row {
            spacing: 10
            Rectangle {
                width: 16
                height: 16
                radius: 2
                color: bestCheckBox.checked ? "orange" : "transparent" // Indicator remains based on `checked`
                border.color: "white"
                border.width: 2
            }
            Label {
                text: "Best"
                color: "white"
                verticalAlignment: Text.AlignVCenter
            }
        }
        onClicked: {
            if (!checked) checked = true; // Prevent unchecking
        }
    }
    CheckBox {
        id: betterCheckBox
        ButtonGroup.group: qualityGroup
        checked: true // Default selection
        contentItem: Row {
            spacing: 10
            Rectangle {
                width: 16
                height: 16
                radius: 2
                color: betterCheckBox.checked ? "orange" : "transparent" // Indicator remains based on `checked`
                border.color: "white"
                border.width: 2
            }
            Label {
                text: "Better"
                color: "white"
                verticalAlignment: Text.AlignVCenter
            }
        }
        onClicked: {
            if (!checked) checked = true; // Prevent unchecking
        }
    }
    CheckBox {
        id: goodCheckBox
        ButtonGroup.group: qualityGroup
        contentItem: Row {
            spacing: 10
            Rectangle {
                width: 16
                height: 16
                radius: 2
                color: goodCheckBox.checked ? "orange" : "transparent" // Indicator remains based on `checked`
                border.color: "white"
                border.width: 2
            }
            Label {
                text: "Good"
                color: "white"
                verticalAlignment: Text.AlignVCenter
            }
        }
        onClicked: {
            if (!checked) checked = true; // Prevent unchecking
        }
    }
}



        // Video Settings
        Label {
            text: "Video Settings"
            color: "#FFFFFF"
            font.bold: true
        }

        Column {
            spacing: 10

            Row {
                spacing: 20
                Label {
                    text: "Encoder:"
                    color: "#FFFFFF"
                    width: 150
                }
                ComboBox {
                    id: encoderComboBox
                    model: ["H.264", "MPEG-4 (Coming Soon)"]  // Modified model
                    currentIndex: 0
                    width: 300

                    delegate: ItemDelegate {
                        width: parent.width
                        text: modelData
                        enabled: modelData !== "MPEG-4 (Coming Soon)" // Disable "MPEG-4" option
                        background: Rectangle {
                            color: enabled ? "transparent" : "#808080"  // Gray background for disabled
                            radius: 5
                            border.color: "#AAAAAA"
                            border.width: 1
                        }
                        contentItem: Text {
                            text: modelData
                            color: enabled ? "#000000" : "#AAAAAA"  // Text color for disabled item
                            anchors.centerIn: parent
                        }
                    }
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Resolution:"
                    color: "#FFFFFF"
                    width: 150
                }
                ComboBox {
                    id: resolutionComboBox
                    model: ["352x288", "640x480", "720x480", "720x576", "1280x720", "1440x1080", "1920x1080", "3840x2160", "Custom"]
                    currentIndex: 0
                    width: 300
                    onActivated: {
                        if (currentIndex === 8) { // Custom selected
                            customResolutionDialog.open()
                        }
                    }
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Frame Rate:"
                    color: "#FFFFFF"
                    width: 150
                }
                ComboBox {
                    model: ["12", "15", "20", "23.97", "24", "25", "29.97", "30"]
                    currentIndex: 0
                    width: 300
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Bit Rate:"
                    color: "#FFFFFF"
                    width: 150
                }
                ComboBox {
                    id: videoBitRateComboBox
                    model: ["384 kbps", "512 kbps", "768 kbps", "900 kbps", "1000 kbps", "1500 kbps", "Custom"]
                    currentIndex: 3
                    width: 300
                    onActivated: {
                        if (currentIndex === 6) { // Custom selected
                            customBitRateDialog.open()
                        }
                    }
                }
            }
        }

        // Audio Settings
        Label {
            text: "Audio Settings"
            color: "#FFFFFF"
            font.bold: true
        }

        Column {
            spacing: 10

            Row {
                spacing: 20
                Label {
                    text: "Channel:"
                    color: "#FFFFFF"
                    width: 150
                }
                ComboBox {
                    model: ["Mono", "Stereo", "5.1 Surround Sound"]
                    currentIndex: 0
                    width: 300
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Sample Rate:"
                    color: "#FFFFFF"
                    width: 150
                }
                ComboBox {
                    model: ["44100 Hz", "48000 Hz"]
                    currentIndex: 0
                    width: 300
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Bit Rate:"
                    color: "#FFFFFF"
                    width: 150
                }
                ComboBox {
                    id: audioBitRateComboBox
                    model: ["96 kbps", "128 kbps", "192 kbps", "Custom"]
                    currentIndex: 1
                    width: 300
                    onActivated: {
                        if (currentIndex === 3) { // Custom selected
                            customBitRateDialog.open()
                        }
                    }
                }
            }
        }

        // Buttons
        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            signal cancelClicked()

            Button {
                text: "CANCEL"
                width: 120
                height: 40
                background: Rectangle {
                    border.color: "#FF4500"
                    border.width: 2
                    color: "#1F1F1F"
                    radius: 30
                }
                contentItem: Text {
                    text: "CANCEL"
                    color: "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        parent.scale = 1.1
                    }
                    onExited: {
                        parent.scale = 1.0
                    }
                    onClicked:
                    {
                        cancelClicked()
                    }
                }
            }
            Button {
                text: "OK"
                width: 120
                height: 40
                background: Rectangle {
                    color: "#FF4500"
                    radius: 30
                }
                contentItem: Text {
                    text: "OK"
                    color: "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        parent.scale = 1.1
                    }
                    onExited: {
                        parent.scale = 1.0
                    }
                }
            }
        }
    }

    // Custom Resolution Dialog
    Dialog {
        id: customResolutionDialog
        modal: true
        title: "Set Custom Resolution"

        Column {
            spacing: 10
            padding: 10

            Row {
                spacing: 10
                Label { text: "Width:" }
                TextField { id: customWidth; placeholderText: "e.g. 1920" }
            }
            Row {
                spacing: 10
                Label { text: "Height:" }
                TextField { id: customHeight; placeholderText: "e.g. 1080" }
            }

            Button {
                text: "OK"
                onClicked: {
                    resolutionComboBox.model[8] = customWidth.text + "x" + customHeight.text
                    customResolutionDialog.close()
                }
            }
        }
    }

    // Custom Bit Rate Dialog
    Dialog {
        id: customBitRateDialog
        modal: true
        title: "Set Custom Bit Rate"

        Column {
            spacing: 10
            padding: 10

            Row {
                spacing: 10
                Label { text: "Bit Rate:" }
                TextField { id: customBitRate; placeholderText: "e.g. 1024" }
            }

            Button {
                text: "OK"
                onClicked: {
                    if (videoBitRateComboBox.currentIndex === 6) {
                        videoBitRateComboBox.model[6] = customBitRate.text + " kbps"
                    } else if (audioBitRateComboBox.currentIndex === 3) {
                        audioBitRateComboBox.model[3] = customBitRate.text + " kbps"
                    }
                    customBitRateDialog.close()
                }
            }
        }
    }
}