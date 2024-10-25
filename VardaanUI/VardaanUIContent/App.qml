import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: 800
    height: 600

    // Create a horizontal layout for the logo and menu bar
    Row {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 10 // Space between logo and menu bar

        // Add your studio logo
        Image {
            id: logo
            source: "C://Users//Lenovo//Downloads//vardaan.jpg" // Path to your logo image
            width: 100 // Set the width of the logo
            height: 50 // Set the height of the logo
            // Optional: Ensure the image is scaled to fit
            fillMode: Image.PreserveAspectFit
        }

        MenuBar {
            // Menu bar settings
            anchors.verticalCenter: parent.verticalCenter // Center the menu bar vertically

            Menu {
                title: "File"
                MenuItem { text: "New Project" }
                MenuItem { text: "Import Media" }
                MenuItem { text: "Save Project" }
                MenuItem { text: "Save Project As" }
                MenuItem { text: "Project Settings" }
                MenuItem { text: "Exit" }
            }

            Menu {
                title: "Edit"
                MenuItem { text: "Undo" }
                MenuItem { text: "Redo" }
                MenuItem { text: "Cut" }
                MenuItem { text: "Copy" }
                MenuItem { text: "Paste" }
                MenuItem { text: "Delete" }
            }

            Menu {
                title: "Tools"
                Menu {
                    title: "Video"
                    MenuItem { text: "Crop & Zoom" }
                    MenuItem { text: "Crop to Fit" }
                }
                Menu {
                    title: "Audio"
                    MenuItem { text: "Adjust Audio" }
                    MenuItem { text: "Detach Audio" }
                    MenuItem { text: "Mute" }
                }
                Menu {
                    title: "Color Correction"
                    MenuItem { text: "Correction Palette" }
                }
            }

            Menu {
                title: "View"
                MenuItem { text: "Play/Pause" }
                MenuItem { text: "Stop" }
                MenuItem { text: "Full Screen View" }
            }

            Menu {
                title: "Help"
                MenuItem { text: "Mail Us" }
                MenuItem { text: "Suggest Feature" }
                MenuItem { text: "Feedback" }
                MenuItem { text: "About Vardaan Studio" }
            }
        }
    }

    // Main content area
}
