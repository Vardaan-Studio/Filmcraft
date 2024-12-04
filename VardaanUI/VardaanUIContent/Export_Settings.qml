import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 600
    height: 500
    title: "Settings"
    color: "#1f1f1f"

    Column {
        anchors.fill: parent
        spacing: 20
        padding: 20

        // Quality Selection
        Row {
            spacing: 20
            Label {
                text: "Quality:"
                color: "#FF4500"
                width: 100
            }
            CheckBox {
                text: "Best"
                checked: false
            }
            CheckBox {
                text: "Better"
                checked: true
            }
            CheckBox {
                text: "Good"
                checked: false
            }
        }

        // Video Settings
        Label {
            text: "Video Settings"
            font.bold: true
            color: "#FF4500"
        }

        Column {
            spacing: 10

            Row {
                spacing: 20
                Label {
                    text: "Encoder:"
                    color: "#FF4500"
                    width: 150
                }
                ComboBox {
                    model: ["H.264", "MPEG-4 (Disabled)"]
                    currentIndex: 0
                    width: 300
                    enabled: currentIndex !== 1 // MPEG-4 disabled
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Resolution:"
                    color: "#FF4500"
                    width: 150
                }
                ComboBox {
                    model: ["352x288", "640x480", "720x480", "720x576", "1280x720", "1440x1080", "1920x1080", "3840x2160", "Custom"]
                    currentIndex: 0
                    width: 300
                }
                Button {
                    text: "Set Custom"
                    enabled: false // Enable only if "Custom" is selected
                    onClicked: {
                        customResolutionDialog.open()
                    }
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Frame Rate:"
                    color: "#FF4500"
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
                    color: "#FF4500"
                    width: 150
                }
                Slider {
                    id: videoBitRateSlider
                    from: 384
                    to: 1500
                    stepSize: 1
                    value: 768
                    width: 300
                }
                Label {
                    text: videoBitRateSlider.value + " kbps"
                    color: "#FF4500"
                }
            }
        }

        // Audio Settings
        Label {
            text: "Audio Settings"
            font.bold: true
            color: "#FF4500"
        }

        Column {
            spacing: 10

            Row {
                spacing: 20
                Label {
                    text: "Channel:"
                    color: "#FF4500"
                    width: 150
                }
                ComboBox {
                    model: ["Mono", "Stereo", "5.1 Surround Sound (Disabled)"]
                    currentIndex: 0
                    width: 300
                    enabled: currentIndex !== 2 // Disable 5.1 Surround Sound
                }
            }

            Row {
                spacing: 20
                Label {
                    text: "Sample Rate:"
                    color: "#FF4500"
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
                    color: "#FF4500"
                    width: 150
                }
                Slider {
                    id: audioBitRateSlider
                    from: 96
                    to: 192
                    stepSize: 1
                    value: 128
                    width: 300
                }
                Label {
                    text: audioBitRateSlider.value + " kbps"
                    color: "#FF4500"
                }
            }
        }

        // GPU Acceleration
        Label {
            text: "Export Media"
            font.bold: true
            color: "#FF4500"
        }
        Row {
            spacing: 20
            CheckBox {
                id: gpuAccelerationCheckbox
                text: "Enable GPU Accelerated video encoding"
                checked: false
                
            }
        }

        // Buttons
        Row {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: "CANCEL"
                width: 120
                height: 40
                background: Rectangle {
                    color: "#FF4500"
                    radius: 5
                }
                contentItem: Text {
                    text: "CANCEL"
                    color: "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                text: "OK"
                width: 120
                height: 40
                background: Rectangle {
                    color: "#FF4500"
                    radius: 5
                }
                contentItem: Text {
                    text: "OK"
                    color: "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Button {
                text: "DEFAULT"
                width: 120
                height: 40
                background: Rectangle {
                    color: "#FF4500"
                    radius: 5
                }
                contentItem: Text {
                    text: "DEFAULT"
                    color: "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
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
                    // Process custom resolution
                    customResolutionDialog.close()
                }
            }
        }
    }
}
