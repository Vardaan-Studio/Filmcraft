import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Dialog {
        id: audioDialog
        title: "Audio Adjustments"
        modal: true
        width: 400
        height: 500
        background: Rectangle {
            color: "#1f1f1f"  
            radius: 10
        }

        contentItem: Column {
            spacing: 20
            padding: 10
            width: parent.width

            Row {
                spacing: 10
                Text { text: "Fade In"; width: 100 }
                Slider {
                    id: fadeInSlider
                    from: 0
                    to: 10
                    value: 0
                    width: 150
                    onValueChanged: fadeInValue.text = value.toFixed(1)
                }
                TextField {
                    id: fadeInValue
                    text: fadeInSlider.value.toFixed(1)
                    width: 50
                    onTextChanged: {
                        fadeInSlider.value = parseFloat(fadeInValue.text) || 0;
                    }
                }
            }

            Row {
                spacing: 10
                Text { text: "Fade Out"; width: 100 }
                Slider {
                    id: fadeOutSlider
                    from: 0
                    to: 10
                    value: 0
                    width: 150
                    onValueChanged: fadeOutValue.text = value.toFixed(1)
                }
                TextField {
                    id: fadeOutValue
                    text: fadeOutSlider.value.toFixed(1)
                    width: 50
                    onTextChanged: {
                        fadeOutSlider.value = parseFloat(fadeOutValue.text) || 0;
                    }
                }
            }

            Row {
                spacing: 10
                Text { text: "Pitch"; width: 100 }
                Slider {
                    id: pitchSlider
                    from: -12
                    to: 12
                    value: 0
                    width: 150
                    onValueChanged: pitchValue.text = value.toFixed(1)
                }
                TextField {
                    id: pitchValue
                    text: pitchSlider.value.toFixed(1)
                    width: 50
                    onTextChanged: {
                        pitchSlider.value = parseFloat(pitchValue.text) || 0;
                    }
                }
            }

            Row {
                spacing: 10
                Text { text: "Equalizer"; width: 100 }
                ComboBox {
                    id: equalizerDropdown
                    width: 150
                    model: [
                        "Default", "Classic", "Dance", "Low Bass", "Pop", 
                        "Rock n Roll", "Soft", "Techno", "Hard Rock", 
                        "Ska", "Country", "Acoustic", "Folks", "Blues"
                    ]
                }
            }

            Column {
                spacing: 10
                CheckBox {
                    id: denoiseCheckBox
                    text: "Remove Background Noise"
                }

                Row {
                    spacing: 10
                    Text { text: "Denoise Strength"; width: 100 }
                    Slider {
                        id: denoiseSlider
                        from: 0
                        to: 2
                        stepSize: 1
                        width: 150
                        enabled: denoiseCheckBox.checked
                        onValueChanged: denoiseStrengthValue.text = denoiseSlider.value === 0 ? "Weak" : denoiseSlider.value === 1 ? "Mid" : "Strong"
                    }
                    Text {
                        id: denoiseStrengthValue
                        text: denoiseSlider.value === 0 ? "Weak" : denoiseSlider.value === 1 ? "Mid" : "Strong"
                    }
                }
            }

            Column {
                spacing: 10
                CheckBox {
                    id: duckingCheckBox
                    text: "Lower Volume of Other Clips"
                }

                Row {
                    spacing: 10
                    Text { text: "Ducking Amount"; width: 100 }
                    Slider {
                        id: duckingSlider
                        from: 0
                        to: 1
                        value: 0.5
                        width: 150
                        enabled: duckingCheckBox.checked
                        onValueChanged: duckingAmountValue.text = value.toFixed(2)
                    }
                    TextField {
                        id: duckingAmountValue
                        text: duckingSlider.value.toFixed(2)
                        width: 50
                        onTextChanged: {
                            duckingSlider.value = parseFloat(duckingAmountValue.text) || 0.5;
                        }
                    }
                }
            }
        }

        // Customize the buttons
        standardButtons: Dialog.Ok | Dialog.Cancel

        Button {
            id: okButton
            text: "OK"
            style: ButtonStyle {
                background: Rectangle {
                    color: "#ff4500"  
                    radius: 5
                }
                padding: 10
            }
            onClicked: audioDialog.accept()
        }

        Button {
            id: cancelButton
            text: "Cancel"
            style: ButtonStyle {
                border: Border {
                    width: 2
                    color: "#ff4500"  
                }
                padding: 10
            }
            onClicked: audioDialog.reject()
        }
    }

    Component.onCompleted: {
        audioDialog.open()
    }
}
