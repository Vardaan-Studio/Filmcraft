// Screen01.ui.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

// Define your UI component
Rectangle {
    width: 640
    height: 480
    color: "lightgrey" // Background color for visibility

    // Define a signal that will be emitted
    signal mediaImported

    // Button for user interaction
    Button {
        id: importButton
        text: "Import Media"
        anchors.centerIn: parent // Center the button in the parent Rectangle

        // Emit the signal when the button is clicked
        onClicked: mediaImported // Emit the signal
    }

    Text {
        id: _text
        x: 60
        y: 309
        width: 100
        height: 36
        text: qsTr("Example")
        font.pixelSize: 26
    }

    Text {
        id: _text1
        x: 435
        y: 336
        width: 81
        height: 62
        text: qsTr("Het Anghan")
        font.pixelSize: 12
    }

    Text {
        id: _text2
        x: 362
        y: 105
        width: 107
        height: 65
        text: qsTr("Deep Patel")
        font.pixelSize: 12
    }
}
