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
        spacing: 10
        height: 60

        // Studio logo
        Image {
            id: logo
            source: "images/vardaan.png" // Path to your logo image
            width: 130
            height: 50
            fillMode: Image.PreserveAspectFit
        }

        // Menu Bar
        MenuBar {
            anchors.verticalCenter: parent.verticalCenter

            Menu {
                title: "File"

                MenuItem {
                    text: "New Project\t                     Ctrl+N"
                    Shortcut {
                        sequence: "Ctrl+N"
                        onActivated: console.log("New Project Triggered") // Replace with your function
                    }
                }

                MenuItem {
                    text: "Import Media\t                      Ctrl+I"
                    Shortcut {
                        sequence: "Ctrl+I"
                        onActivated: console.log("Import Media Triggered") // Replace with your function
                    }
                }

                MenuItem {
                    text: "Save Project\t                     Ctrl+S"
                    Shortcut {
                        sequence: "Ctrl+S"
                        onActivated: console.log("Save Project Triggered") // Replace with your function
                    }
                }

                MenuItem {
                    text: "Save Project As           Ctrl+Shift+S"
                    Shortcut {
                        sequence: "Ctrl+Shift+S"
                        onActivated: console.log("Save Project As Triggered") // Replace with your function
                    }
                }

                MenuItem {
                    text: "Project Settings" // No shortcut for this item
                }

                MenuItem {
                    text: "Exit\t                    Alt+F4"
                    onTriggered: Qt.quit()
                    Shortcut {
                        sequence: "Alt+F4"
                        onActivated: Qt.quit()
                    }
                }
            }

            Menu {
                     title: "Edit"

                         MenuItem {
                           text: "Undo\t                      Ctrl+Z"
                                    Shortcut {
                                            sequence: "Ctrl+Z"
                                            onActivated: console.log("Undo Triggered") // Replace with your function
                                                }
    }

    MenuItem {
        text: "Redo\t                      Ctrl+Y"
        Shortcut {
            sequence: "Ctrl+Y"
            onActivated: console.log("Redo Triggered") // Replace with your function
        }
    }

    MenuItem {
        text: "Cut\t                     Ctrl+X"
        Shortcut {
            sequence: "Ctrl+X"
            onActivated: console.log("Cut Triggered") // Replace with your function
        }
    }

    MenuItem {
        text: "Copy\t                     Ctrl+C"
        Shortcut {
            sequence: "Ctrl+C"
            onActivated: console.log("Copy Triggered") // Replace with your function
        }
    }

    MenuItem {
        text: "Paste\t                     Ctrl+V"
        Shortcut {
            sequence: "Ctrl+V"
            onActivated: console.log("Paste Triggered") // Replace with your function
        }
    }

    MenuItem {
        text: "Delete\t                     Delete"
        Shortcut {
            sequence: "Delete"
            onActivated: console.log("Delete Triggered") // Replace with your function
        }
    }
}


     Menu {
    title: "Tools"

    Menu {
        title: "Video"
        
        MenuItem {
            text: "Crop & Zoom\t                     Alt+C"
            Shortcut {
                sequence: "Alt+C"
                onActivated: console.log("Crop & Zoom Triggered") // Replace with your function
            }
        }

        MenuItem {
            text: "Crop to Fit\t                     Ctrl+F"
            Shortcut {
                sequence: "Ctrl+F"
                onActivated: console.log("Crop to Fit Triggered") // Replace with your function
            }
        }
    }

    Menu {
        title: "Audio"
        
        MenuItem {
            text: "Adjust Audio" // No shortcut for this item
        }

        MenuItem {
            text: "Detach Audio\t              Ctrl+Alt+D"
            Shortcut {
                sequence: "Ctrl+Alt+D"
                onActivated: console.log("Detach Audio Triggered") // Replace with your function
            }
        }

        MenuItem {
            text: "Mute\t           Ctrl+Shift+M"
            Shortcut {
                sequence: "Ctrl+Shift+M"
                onActivated: console.log("Mute Triggered") // Replace with your function
            }
        }
    }

    Menu {
        title: "Color Correction"
        
        MenuItem {
            text: "Correction Palette                Alt+M"
            Shortcut {
                sequence: "Alt+M"
                onActivated: console.log("Correction Palette Triggered") // Replace with your function
            }
        }
    }

    MenuItem {
        text: "Speed Control" // No shortcut for this item
    }
}



            Menu {
    title: "View"

    MenuItem {
        text: "Play/Pause\t                      Space"
        Shortcut {
            sequence: "Space"
            onActivated: console.log("Play/Pause Triggered") // Replace with your function
        }
    }

    MenuItem {
        text: "Stop\t                      Ctrl+/"
        Shortcut {
            sequence: "Ctrl+/"
            onActivated: console.log("Stop Triggered") // Replace with your function
        }
    }

    MenuItem {
        text: "Full Screen View              Alt+Enter"
        Shortcut {
            sequence: "Alt+Enter"
            onActivated: console.log("Full Screen View Triggered") // Replace with your function
        }
    }
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



    Button {
        text: "Export"
        x: 1380
        y: 5
        width: 130
        height: 52
        spacing: 10
        font.pixelSize: 18
        font.bold: true
        contentItem: Text {
            text: "Export"
            color: "white"  // Text color
            font.pixelSize: 18
            font.bold: true
            anchors.centerIn: parent
        }
        background: Rectangle {
            width: parent.width
            height: parent.height
            radius: 10
            color: "#FF6A00" // Base orange color
            border.color: "#222222" // Slightly darker border
            border.width: 2
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#FFA040" } // Light orange for gloss effect
                GradientStop { position: 1.0; color: "#FF4A00" } // Darker orange at the bottom
            }
            Rectangle { // Inner shadow effect
                anchors.fill: parent
                radius: 10
                color: "transparent"
                border.color: "#222222"
                border.width: 1
                opacity: 0.5
            }
            Rectangle { // Bottom shadow for depth
                width: parent.width - 8
                height: parent.height - 8
                radius: 8
                anchors.centerIn: parent
                color: "#FF6A00"
                border.color: "#222222"
                border.width: 2
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#FF6A00" }
                    GradientStop { position: 1.0; color: "#D65000" }
                }
                opacity: 0.8
            }
        }
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
    anchors.horizontalCenterOffset: 283 // Margin for spacing
    anchors.horizontalCenter: parent.horizontalCenter // Center horizontally
    spacing: 10 // Space between the buttons
    height: 50 // Set height for the editing bar

    // Step Back Button
    Button {
        width: 40 // Set width for the button
        background: Rectangle {
            width: parent.width
            height: parent.height
            radius: 10
            color: "#F0F0F0" // Light gray background color
            border.color: "#CCCCCC" // Slightly darker border for contrast
            border.width: 1
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#E0E0E0" } // Light gray at the top
                GradientStop { position: 1.0; color: "#B0B0B0" } // Darker gray at the bottom
            }
            Rectangle { // Inner shadow effect
                anchors.fill: parent
                radius: 10
                color: "transparent"
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.5
            }
            Rectangle { // Bottom shadow for depth
                width: parent.width - 8
                height: parent.height - 8
                radius: 8
                anchors.centerIn: parent
                color: "#D0D0D0" // Slightly darker gray for depth
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.8
            }
        }
        icon.source: "images/step-back.png" // Path to the Step Back icon
    }

    // Step Forward Button
    Button {
        width: 40 // Set width for the button
        background: Rectangle {
            width: parent.width
            height: parent.height
            radius: 10
            color: "#F0F0F0" // Light gray background color
            border.color: "#CCCCCC" // Slightly darker border for contrast
            border.width: 1
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#E0E0E0" } // Light gray at the top
                GradientStop { position: 1.0; color: "#B0B0B0" } // Darker gray at the bottom
            }
            Rectangle { // Inner shadow effect
                anchors.fill: parent
                radius: 10
                color: "transparent"
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.5
            }
            Rectangle { // Bottom shadow for depth
                width: parent.width - 8
                height: parent.height - 8
                radius: 8
                anchors.centerIn: parent
                color: "#D0D0D0" // Slightly darker gray for depth
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.8
            }
        }
        icon.source: "images/step-forward.png" // Path to the Step Forward icon
    }

    // Pause/Play Button
    Button {
        width: 40 // Set width for the button
        background: Rectangle {
            width: parent.width
            height: parent.height
            radius: 10
            color: "#F0F0F0" // Light gray background color
            border.color: "#CCCCCC" // Slightly darker border for contrast
            border.width: 1
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#E0E0E0" } // Light gray at the top
                GradientStop { position: 1.0; color: "#B0B0B0" } // Darker gray at the bottom
            }
            Rectangle { // Inner shadow effect
                anchors.fill: parent
                radius: 10
                color: "transparent"
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.5
            }
            Rectangle { // Bottom shadow for depth
                width: parent.width - 8
                height: parent.height - 8
                radius: 8
                anchors.centerIn: parent
                color: "#D0D0D0" // Slightly darker gray for depth
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.8
            }
        }
        icon.source: "images/pause.png" // Path to the Pause/Play icon
    }

    // Stop Button
    Button {
        width: 40 // Set width for the button
        background: Rectangle {
            width: parent.width
            height: parent.height
            radius: 10
            color: "#F0F0F0" // Light gray background color
            border.color: "#CCCCCC" // Slightly darker border for contrast
            border.width: 1
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#E0E0E0" } // Light gray at the top
                GradientStop { position: 1.0; color: "#B0B0B0" } // Darker gray at the bottom
            }
            Rectangle { // Inner shadow effect
                anchors.fill: parent
                radius: 10
                color: "transparent"
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.5
            }
            Rectangle { // Bottom shadow for depth
                width: parent.width - 8
                height: parent.height - 8
                radius: 8
                anchors.centerIn: parent
                color: "#D0D0D0" // Slightly darker gray for depth
                border.color: "#CCCCCC"
                border.width: 1
                opacity: 0.8
            }
        }
        icon.source: "images/stop.png" // Path to the Stop icon
    }
}


       Rectangle {
    id: rectangle1
    x: 1300
    y: 463
    width: 356
    height: 50
    color: "transparent"

    Row {
        anchors.fill: parent // Fill the rectangle with buttons
        spacing: 10 // Space between the buttons

        // New Volume Button
        Button {
            width: 40 // Set width for the button
            background: Rectangle {
                width: parent.width
                height: parent.height
                radius: 10
                color: "#F0F0F0" // Light gray background color
                border.color: "#CCCCCC" // Slightly darker border for contrast
                border.width: 1
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#E0E0E0" } // Light gray at the top
                    GradientStop { position: 1.0; color: "#B0B0B0" } // Darker gray at the bottom
                }
                Rectangle { // Inner shadow effect
                    anchors.fill: parent
                    radius: 10
                    color: "transparent"
                    border.color: "#CCCCCC"
                    border.width: 1
                    opacity: 0.5
                }
                Rectangle { // Bottom shadow for depth
                    width: parent.width - 8
                    height: parent.height - 8
                    radius: 8
                    anchors.centerIn: parent
                    color: "#D0D0D0" // Slightly darker gray for depth
                    border.color: "#CCCCCC"
                    border.width: 1
                    opacity: 0.8
                }
            }
            icon.source: "images/high-volume.png" // Replace with your volume icon path
        }

        // Full Screen Button
        Button {
            width: 40 // Set width for the button
            background: Rectangle {
                width: parent.width
                height: parent.height
                radius: 10
                color: "#F0F0F0" // Light gray background color
                border.color: "#CCCCCC" // Slightly darker border for contrast
                border.width: 1
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#E0E0E0" } // Light gray at the top
                    GradientStop { position: 1.0; color: "#B0B0B0" } // Darker gray at the bottom
                }
                Rectangle { // Inner shadow effect
                    anchors.fill: parent
                    radius: 10
                    color: "transparent"
                    border.color: "#CCCCCC"
                    border.width: 1
                    opacity: 0.5
                }
                Rectangle { // Bottom shadow for depth
                    width: parent.width - 8
                    height: parent.height - 8
                    radius: 8
                    anchors.centerIn: parent
                    color: "#D0D0D0" // Slightly darker gray for depth
                    border.color: "#CCCCCC"
                    border.width: 1
                    opacity: 0.8
                }
            }
            icon.source: "images/full-screen.png" // Replace with your full-screen icon path
        }
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
            text: " Speed"
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
        x: 0
        y: 58
        width: 1920
        height: 2
        color: "#120f0f"
    }

    Rectangle {
        id: rectangle3
        x: 0
        y: 167
        width: 775
        height: 2
        color: "#100e0e"
    }

    Rectangle {
        id: rectangle155
        x: 0
        y: 507
        width: 1920
        height: 2
        color: "#111010"
    }

    Rectangle {
        id: rectangle4
        x: 0
        y: 85
        width: 775
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
        width: 1145
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
        x: 0
        y: 563
        width: 1920
        height: 2
        color: "#0d0b0b"
    }

    Rectangle {
        id: rectangle10
        x: 777
        y: 141
        width: 1145
        height: 2
        color: "#0c0c0c"
    }




    // Main content area
}
