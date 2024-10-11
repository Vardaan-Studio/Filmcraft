// App.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

// Main application entry point
Window {
    visible: true
    width: 640
    height: 480
    title: "Main Application"

    // Use a Loader to load the Screen01 UI component
    Loader {
        id: screenLoader
        anchors.fill: parent  // Fill the entire application window
        source: "qrc:/Screen01.ui.qml"  // Adjust the path according to your project structure
    }

    // Connections object to connect to the signal emitted from Screen01
    Connections {
        target: screenLoader.item  // Connect to the loaded item (Screen01)
        onMediaImported: {
            console.log("Media imported!");  // Handle the signal
            // Add your additional logic here
        }
    }
}
