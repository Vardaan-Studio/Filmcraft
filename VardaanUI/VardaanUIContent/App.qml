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
    
    MenuItem {
        text: "Show Properties                    Alt+E"
        onTriggered: propertiesDialog.open()
        Shortcut {
            sequence: "Alt+E"
            onActivated: console.log("Show Properties Triggered") // Replace with your function
        }
    }

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
    Dialog {
        id: propertiesDialog
        title: "Properties"
        modal: true
        standardButtons: Dialog.Ok | Dialog.Cancel

        Column {
            width: 300
            spacing: 10

            ComboBox {
                id: optionsSelector
                model: ["Transform", "Compositing", "Chroma Key"]
                width: parent.width // Make ComboBox full width of the dialog
            }

            Loader {
                id: contentLoader
                width: parent.width
                height: 200 // Set a specific height for content area

                sourceComponent: optionsSelector.currentIndex === 2 ? chromaKeyComponent : null
                // Add additional components for "Transform" and "Compositing" if needed
            }
        }

        Component {
            id: chromaKeyComponent
            Chromakey { } // Loads the `Chromakey.qml` component
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
    x: 1420
    y: 10
    width: 90 // Reduced width
    height: 35 // Reduced height
    spacing: 10
    font.pixelSize: 14 // Adjusted font size to fit the smaller button
    font.bold: true

    contentItem: Item {
        anchors.fill: parent // Fill the button
        Rectangle {
            anchors.fill: parent
            radius: 8 // Rounded corners
            color: "#FF6A00" // Base orange color
            border.color: "#222222" // Slightly darker border
            border.width: 2

            // Background gradient
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#FFA040" } // Light orange for gloss effect
                GradientStop { position: 1.0; color: "#FF4A00" } // Darker orange at the bottom
            }

            // Inner shadow effect
            Rectangle {
                anchors.fill: parent
                radius: 8 // Adjusted radius for the button
                color: "transparent"
                border.color: "#222222"
                border.width: 1
                opacity: 0.5
            }

            // Bottom shadow for depth
            Rectangle {
                width: parent.width - 6 // Adjusted for smaller button
                height: parent.height - 6 // Adjusted for smaller button
                radius: 6 // Adjusted radius for the button
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

        // Text centered in the button
        Text {
            text: "Export"
            color: "white" // Text color
            font.pixelSize: 14 // Adjusted font size for smaller button
            font.bold: true
            anchors.centerIn: parent // Center the text in the button
        }
    }
}

    // Horizontal feature bar
            Row {
            id: featureBar
            y: -14
            anchors.top: logo.bottom
            anchors.leftMargin: 8
            anchors.rightMargin: 33 // Position below the header row
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
                    width: 70 // Width of each box
                    height: 60  // Height of each box
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
                            width: 25  // Icon width
                            height: 25  // Icon height
                            fillMode: Image.PreserveAspectFit
                            anchors.horizontalCenter: parent.horizontalCenter // Center the icon horizontally
                            anchors.left: parent.left  // Align to the left of the parent
                            anchors.leftMargin: modelData.name === "Colour Grade" ? modelData.offset : 0 // Apply offset if it's Colour Grade
                        }


                        Text {
                            text: modelData.name
                            font.pixelSize: 10  // Font size for all items
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
    anchors.topMargin: 232
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
        anchors.fill: parent
        anchors.leftMargin: 50
        anchors.rightMargin: -50
        anchors.topMargin: -46
        anchors.bottomMargin: 46 // Fill the rectangle with buttons
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
        anchors.topMargin: 272.5
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
        y: 120
        width: 614
        height: 335
        color: "#ffffff"
        border.width: 1
        border.color: "#808080"
    }

    Rectangle {
        id: rectanglefeature
        x: 0
        y: 51
        width: 1920
        height: 1
        color: "#808080"

    }

    Rectangle {
            id: rectangle5
            x: 760
            y: 59
            width: 1
            height: 110
            color: "#808080"
            visible: false
        }




    Rectangle {
        id: rectangle2
        x: 0
        y: 58
        width: 1920
        height: 1
        color: "#808080"
        visible: false
    }

    Rectangle {
        id: rectangle3
        x: 0
        y: 167
        width: 775
        height: 1
        color: "#808080"
        visible: false
    }

    Rectangle {
        id: rectangle155
        x: 0
        y: 507
        width: 1920
        height: 1
        color: "#808080"
        visible: false
    }

    Rectangle {
        id: rectangle4
        x: 0
        y: 85
        width: 775
        height: 1
        color: "#808080"
        visible: false
    }

    Rectangle {
        id: rectangle6
        x: 776
        y: 51
        width: 1
        height: 100
        color: "#808080"

    }

    Rectangle {
        id: rectangle7
        x: 776
        y: 454.5
        width: 1145
        height: 1
        color: "#808080"

    }

    Rectangle {
        id: rectangle8
        x: 0
        y: 120
        width: 165
        height: 335
        color: "#ffffff"
        border.width: 1
        border.color: "#808080"
    }

    Rectangle {
        id: rectangle9
        x: 0
        y: 494
        width: 1920
        height: 0.5
        color: "#808080"

    }

 // Main content area
}
