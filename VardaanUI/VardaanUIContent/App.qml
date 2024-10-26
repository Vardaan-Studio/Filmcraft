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
        height: 60 // Adjust height of the header row for better spacing

        // Add your studio logo
        Image {
            id: logo
            source: "images/vardaan.png" // Path to your logo image
            width: 130 // Set the width of the logo
            height: 50 // Set the height of the logo
            fillMode: Image.PreserveAspectFit
        }

        MenuBar {
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

    // Horizontal feature bar
    Row {
        id: featureBar
        anchors.top: logo.bottom // Position below the header row
        anchors.topMargin: 20 // Add margin to separate from the header row
        anchors.left: parent.left
        anchors.right: parent.right
        height: 200 // Set height for the feature bar
        spacing: 30 // Adjust spacing between icons for better readability
        padding: 10 // Extra padding around icons

        // Feature icons
        Repeater {
            model: [
                { name: "Media", icon: "images/soundtrack.png" },
                { name: " Text", icon: "images/text.png" },
                { name: "Transition", icon: "images/exchange.png" },
                { name: "Effects", icon: "images/effects.png" },
                { name: "Filters", icon: "images/magic-wand.png" },
                { name: "Colour Grade", icon: "images/color-palette.png"}
            ]



            delegate: Rectangle {
                width: 80 // Width of each box
                height: 70  // Height of each box
                color: "#e0e0e0"  // Background color of the box
                radius: 8  // Optional: rounded corners
                border.color: "#a0a0a0"
                border.width: 1
                anchors.verticalCenter: parent.verticalCenter
                anchors.margins: 5  // Space between boxes

                Column {
                    anchors.centerIn: parent
                    spacing: 5


                    Image {
                        source: modelData.icon
                        width: 30  // Icon width
                        height: 30  // Icon height
                        fillMode: Image.PreserveAspectFit
                        anchors.horizontalCenter: parent.horizontalCenter // Center the icon horizontally
                        anchors.left: parent.left  // Align to the left of the parent
                        anchors.leftMargin: modelData.name === "Colour Grade" ? modelData.offset : 0 // Apply offset if it's Colour Grade
                    }


                    Text {
                        text: modelData.name
                        font.pixelSize: 12  // Font size for all items
                        horizontalAlignment: Text.AlignHCenter
                        color: "#333333"  // Text color
                    }
                }
            }
        }
    }

    // Main content area
}
