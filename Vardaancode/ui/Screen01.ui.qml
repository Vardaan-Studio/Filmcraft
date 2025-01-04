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

    TabButton {
        id: tabButton
        x: 0
        y: 0
        width: 72
        height: 23
        text: qsTr("Tab Button")
    }

    // Button for user interaction
}
