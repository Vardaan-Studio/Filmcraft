import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: 1920
    height: 1080

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

   Button
    {
    text: "Export";
    x:1812
    y:10
    spacing:10;
    width: 100
    font.pixelSize: 15;
    height: 42

    }

    
    // Horizontal feature bar
    Row {
        id: featureBar
        y: 28
        anchors.top: logo.bottom
        anchors.leftMargin: 55
        anchors.rightMargin: -14 // Position below the header row
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

    Row {
           id: editingBar
           anchors.top: featureBar.bottom // Position it below the feature bar
           anchors.topMargin: 235
           anchors.horizontalCenterOffset: -48 // Margin for spacing
           anchors.horizontalCenter: parent.horizontalCenter // Center horizontally
           spacing: 10 // Space between the buttons
           height: 50 // Set height for the editing bar



           // Step Back Button
           Button {

               icon.source: "images/step-back.png" // Path to the Step Back icon
               width: 40 // Set width for the button
           }

           // Step Forward Button
           Button {

               icon.source: "images/step-forward.png" // Path to the Step Forward icon
               width: 40 // Set width for the button
           }

           // Pause/Play Button
           Button {
               icon.source: "images/pause.png" // Path to the Pause/Play icon
               width: 40 // Set width for the button
           }

           // Stop Button
           Button {
               icon.source: "images/stop.png" // Path to the Stop icon
               width: 40 // Set width for the button
           }
       }

       Rectangle {
        id: rectangle1
        x: 1581
        y: 463
        width: 339
        height: 50
        color: "transparent"

        // New Volume Button
        Button {
            x: 225
            y: 1
            width: 40
              icon.source: "images/high-volume.png" // Replace with your volume icon path

          }

        Button {
            x: 270
            y: 1
            spacing: 10
            width: 40
              icon.source: "images/full-screen.png" // Replace with your volume icon path

          }
    }


    // Tool Bar
    Row {
        id: toolBar
        anchors.top: featureBar.bottom
        anchors.leftMargin: 0 // Position it below the feature bar
        anchors.topMargin: 287
        anchors.horizontalCenterOffset: 0 // Increase margin for more space
        anchors.horizontalCenter: parent.horizontalCenter // Center horizontally
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 20 // Space between the tool buttons
        height: 50 // Set height for the toolbar

        // Tool buttons with icons
        Button {
            text: "Undo"
            icon.source: "images/undo.png" // Path to the Undo icon
        }

        Button {
            text: "Redo"
            icon.source: "images/forward.png" // Path to the Redo icon
        }

        Button {
            text: "Delete"
            icon.source: "images/delete.png" // Path to the Delete icon
        }

        Button {
            text: "Crop"
            icon.source: "images/crop.png" // Path to the Crop icon
        }

        Button {
            text: "Text"
            icon.source: "images/text.png" // Path to the Text icon
        }

        Button {
            text: "Speed"
            icon.source: "images/download-speed.png" // Path to the Speed icon
        }


        Rectangle {
            width: 700 // Adjust width as needed to create space for future tools
            height: toolBar.height
            color: "transparent" // Make it invisible
        }


        Text {
            text: "Timeline Size Adjust:"
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter // Center vertically
            anchors.verticalCenter: parent.verticalCenter // Center it with respect to the toolbar
        }

        Rectangle {
            width: 30 // Width of the circle
            height: 30 // Height of the circle
            color: "#e0e0e0" // Background color
            radius: 15 // Makes it circular
            anchors.verticalCenter: parent.verticalCenter // Center it vertically

            Text {
                text: "-"
                anchors.centerIn: parent // Center text in the circle
                font.pixelSize: 18 // Font size for better visibility
            }
        }

        // Label for the timeline size adjust


        // Slider for adjusting timeline size
        Slider {
            id: timelineSizeSlider
            width: 150 // Adjust width as needed
            from: 0 // Minimum value
            to: 100 // Maximum value
            stepSize: 1 // Increment step size
            anchors.verticalCenter: parent.verticalCenter // Center vertically
        }

        // Circle for the plus sign
        Rectangle {
            width: 30 // Width of the circle
            height: 30 // Height of the circle
            color: "#e0e0e0" // Background color
            radius: 15 // Makes it circular
            anchors.verticalCenter: parent.verticalCenter // Center it vertically

            Text {
                text: "+"
                anchors.centerIn: parent // Center text in the circle
                font.pixelSize: 18 // Font size for better visibility
            }
        }




    }

    Rectangle {
        id: rectangle
        x: 163
        y: 186
        width: 600
        height: 298
        color: "#ffffff"
        border.width: 2
    }

    Rectangle {
            id: rectangle5
            x: 760
            y: 59
            width: 2
            height: 110
            color: "#0e0d0d"
        }
    



    Rectangle {
        id: rectangle2
        x: -110
        y: 58
        width: 2858
        height: 2
        color: "#120f0f"
    }

    Rectangle {
        id: rectangle3
        x: -83
        y: 167
        width: 845
        height: 2
        color: "#100e0e"
    }

    Rectangle {
        id: rectangle155
        x: -46
        y: 507
        width: 2858
        height: 2
        color: "#111010"
    }

    Rectangle {
        id: rectangle4
        x: -39
        y: 85
        width: 800
        height: 2
        color: "#0d0c0c"
    }

    Rectangle {
        id: rectangle6
        x: 775
        y: 59
        width: 2
        height: 450
        color: "#111010"
    }

    Rectangle {
        id: rectangle7
        x: 775
        y: 455
        width: 1200
        height: 2
        color: "#040404"
    }

    Rectangle {
        id: rectangle8
        x: 8
        y: 192
        width: 149
        height: 292
        color: "#ffffff"
        border.width: 2
    }

    Rectangle {
        id: rectangle9
        x: -7
        y: 563
        width: 2858
        height: 2
        color: "#0d0b0b"
    }

    Rectangle {
        id: rectangle10
        x: 777
        y: 141
        width: 1200
        height: 2
        color: "#0c0c0c"
    }




    // Main content area 
}
