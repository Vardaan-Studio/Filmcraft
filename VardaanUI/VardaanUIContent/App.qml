import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: 1920
    height: 1080

    Rectangle {
                anchors.fill: parent
                color: "#1A1A1A" // Set your desired dark color here
            }

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
                    background: Color.black // Dark background for the menu bar

            Menu {
    title: "File"
   

    MenuItem {
    Item {
        width: parent.width
        height: parent.height

        // Dark background for the menu item
        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        // Text with white color
        Text {
            text: "New Project\t                     Ctrl+N"
            anchors.centerIn: parent
            color: "white" // Set text color to white
        }
    }

    Shortcut {
        sequence: "Ctrl+N"
        onActivated: console.log("New Project Triggered") // Replace with your function
    }
}


    MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Import Media\t                      Ctrl+I"
            anchors.centerIn: parent
            color: "white" // Set text color to white
        }
    }
    Shortcut {
        sequence: "Ctrl+I"
        onActivated: console.log("Import Media Triggered") // Replace with your function
    }
}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Save Project\t                     Ctrl+S"
            anchors.centerIn: parent
            color: "white" // Set text color to white
        }
    }
    Shortcut {
        sequence: "Ctrl+S"
        onActivated: console.log("Save Project Triggered") // Replace with your function
    }
}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Save Project As           Ctrl+Shift+S"
            anchors.centerIn: parent
            color: "white" // Set text color to white
        }
    }
    Shortcut {
        sequence: "Ctrl+Shift+S"
        onActivated: console.log("Save Project As Triggered") // Replace with your function
    }
}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        // Container for padding
        Item {
            anchors.left: parent.left // Align the container to the left
            anchors.verticalCenter: parent.verticalCenter // Center vertically within the item
            width: parent.width // Match the parent width

            Text {
                text: "Project Settings" // No shortcut for this item
                color: "white" // Set text color to white
                anchors.left: parent.left // Align text to the left
                anchors.verticalCenter: parent.verticalCenter // Center vertically within the container
                leftPadding: 10 // Use padding instead of margin
            }
        }
    }
}


MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Exit\t                    Alt+F4"
            anchors.centerIn: parent
            color: "white" // Set text color to white
        }
    }
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
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Undo\t                      Ctrl+Z" // Text for Undo
            color: "white" // Set text color to white
            anchors.left: parent.left // Align text to the left
            anchors.verticalCenter: parent.verticalCenter // Center vertically within the container
        }

        Shortcut {
            sequence: "Ctrl+Z"
            onActivated: console.log("Undo Triggered") // Replace with your function
        }
    }

}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Redo\t                      Ctrl+Y" // Text for Redo
            color: "white" // Set text color to white
            anchors.left: parent.left // Align text to the left
            anchors.verticalCenter: parent.verticalCenter // Center vertically within the container
        }

        Shortcut {
            sequence: "Ctrl+Y"
            onActivated: console.log("Redo Triggered") // Replace with your function
        }
    }

}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Cut\t                     Ctrl+X" // Text for Cut
            color: "white" // Set text color to white
            anchors.left: parent.left // Align text to the left
            anchors.verticalCenter: parent.verticalCenter // Center vertically within the container
        }

        Shortcut {
            sequence: "Ctrl+X"
            onActivated: console.log("Cut Triggered") // Replace with your function
        }
    }

}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Copy\t                     Ctrl+C" // Text for Copy
            color: "white" // Set text color to white
            anchors.left: parent.left // Align text to the left
            anchors.verticalCenter: parent.verticalCenter // Center vertically within the container
        }

        Shortcut {
            sequence: "Ctrl+C"
            onActivated: console.log("Copy Triggered") // Replace with your function
        }
    }

}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Paste\t                     Ctrl+V" // Text for Paste
            color: "white" // Set text color to white
            anchors.left: parent.left // Align text to the left
            anchors.verticalCenter: parent.verticalCenter // Center vertically within the container
        }

        Shortcut {
            sequence: "Ctrl+V"
            onActivated: console.log("Paste Triggered") // Replace with your function
        }
    }

}

MenuItem {
    Item {
        width: parent.width
        height: parent.height

        Rectangle {
            anchors.fill: parent
            color: "#222222" // Dark background color for each item
        }

        Text {
            text: "Delete\t                     Delete" // Text for Delete
            color: "white" // Set text color to white
            anchors.left: parent.left // Align text to the left
            anchors.verticalCenter: parent.verticalCenter // Center vertically within the container
        }

        Shortcut {
            sequence: "Delete"
            onActivated: console.log("Delete Triggered") // Replace with your function
        }
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
            onActivated:
            {
                propertiesDialog.open()  // Ensure dialog opens here

            }
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
        onTriggered: speedControlDialog.open()
    }
}


    Dialog {
    id: speedControlDialog
    title: "Custom Speed Control"
    modal: true
    width: 500   // Set your desired width
    height: 500  // Set your desired height
    x: (width - 250) / 2 // Centering the dialog horizontally
    y: (height - 250) / 2 // Centering the dialog vertically

    // Load the content from Customspeed.qml
    Loader {
        id: loader
        source: "Customspeed.qml"
        anchors.fill: parent // Fill the dialog
    }

    // Add buttons under the Loader
    Row {
        spacing: 20
        x: 150
        y: 250
        anchors.horizontalCenter: parent.horizontalCenter // Center the buttons

        Button {
            text: "OK"
            width: 80
            background: Rectangle {
                color: "#ffa500"
                radius: 4
            }
            onClicked: {
                // Add your OK action here
                speedControlDialog.close(); // Optional: Close dialog on OK
            }
        }

        Button {
            width: 80
            height: 32
            background: Rectangle {
                color: "#1E1E1E"
                border.color: "#ffa500"
                radius: 4
            }
            contentItem: Text {
                text: "CANCEL"
                color: "white"
                font.pixelSize: 14
                anchors.centerIn: parent
            }
            onClicked: {
                speedControlDialog.close() // Close the dialog on cancel
            }
        }
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
    width: 80
    height: 32
    font.pixelSize: 14
    font.bold: true

    contentItem: Text {
        text: "Export"
        color: "white"
        font.pixelSize: 14
        font.bold: true
        anchors.centerIn: parent // Centering text within the button
        verticalAlignment: Text.AlignVCenter // Center text vertically
        horizontalAlignment: Text.AlignHCenter // Center text horizontally
    }

    background: Rectangle {
        width: parent.width
        height: parent.height
        radius: 15 // Rounded corners
        color: "#FF4500" // Solid orange color for the button
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
            { name: "Text", icon: "images/text.png" },
            { name: "Transition", icon: "images/exchange.png" },
            { name: "Effects", icon: "images/effects.png" },
            { name: "Filters", icon: "images/magic-wand.png" },
            { name: "Colour Grade", icon: "images/color-palette.png" }
        ]

        delegate: Rectangle {
            width: 70 // Width of each box
            height: 60 // Height of each box
            color: "transparent" // Keep the rectangle invisible
            radius: 8 // Optional: rounded corners
            anchors.verticalCenter: parent.verticalCenter
            anchors.margins: 5 // Space between boxes

            MouseArea {
                anchors.fill: parent // Make the MouseArea cover the entire rectangle
                cursorShape: Qt.PointingHandCursor // Change cursor to hand on hover
                onClicked: {
                    // Add your click action here (for now, just log the name)
                    console.log(modelData.name + " clicked");
                }
            }

            Column {
                anchors.centerIn: parent
                spacing: 5

                Image {
                    source: modelData.icon
                    width: 25 // Icon width
                    height: 25 // Icon height
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter // Center the icon horizontally
                    anchors.left: parent.left // Align to the left of the parent
                    anchors.leftMargin: modelData.name === "Colour Grade" ? modelData.offset : 0 // Apply offset if it's Colour Grade
                }

                Text {
                    text: modelData.name
                    font.pixelSize: 10 // Font size for all items
                    horizontalAlignment: Text.AlignHCenter
                    color: "#FFFFFF" // Change text color for better contrast
                }
            }
        }
    }
}




    Row {
    id: editingBar
    anchors.top: featureBar.bottom // Position it below the feature bar
    anchors.topMargin: 238
    anchors.horizontalCenterOffset: 283 // Margin for spacing
    anchors.horizontalCenter: parent.horizontalCenter // Center horizontally
    spacing: 10 // Space between the buttons
    height: 50 // Set height for the editing bar

    // Step Back Button
    Button {
        width: 40 // Set width for the button
        icon.source: "images/step-back.png" // Path to the Step Back icon
        icon.color: "white" // Set icon color to white
        icon.width: 16
        icon.height: 16

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }
    }

    // Step Forward Button
    Button {
        width: 40 // Set width for the button
        icon.source: "images/step-forward.png" // Path to the Step Forward icon
        icon.color: "white" // Set icon color to white
        icon.width: 16
        icon.height: 16

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }
    }

    // Pause/Play Button
    Button {
        width: 40 // Set width for the button
        icon.source: "images/pause.png" // Path to the Pause/Play icon
        icon.color: "white" // Set icon color to white
        icon.width: 16
        icon.height: 16

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }
    }

    // Stop Button
    Button {
        width: 40 // Set width for the button
        icon.source: "images/stop.png" // Path to the Stop icon
        icon.color: "white" // Set icon color to white
        icon.width: 16
        icon.height: 16

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }
    }
}




       Rectangle {
    id: rectangle1
    x: 1300
    y: 470
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
    icon.source: "images/high-volume.png" // Replace with your volume icon path
    icon.color: "white" // Set icon color to white
    icon.width: 16
    icon.height: 16

    // Make the background transparent
    background: Rectangle {
        color: "transparent" // Set to transparent to hide the rectangle
    }

    // Optional: If you want a hover effect or active state, you can define styles here
    MouseArea {
        anchors.fill: parent
        onClicked: {
            // Add your click action here
        }
        onPressed: {
            // Optional: Change icon color or size on press for effect
            icon.color = "lightgray"; // Change color on press
        }
        onReleased: {
            icon.color = "white"; // Revert color on release
        }
    }
}


        // Full Screen Button
        Button {
    width: 30 // Set width for the button
    icon.source: "images/full-screen.png" // Replace with your full-screen icon path
    icon.color: "white" // Set icon color to white
    icon.width: 16
    icon.height: 16

    // Make the background transparent
    background: Rectangle {
        color: "transparent" // Set to transparent to hide the rectangle
    }

    // Optional: If you want a hover effect or active state, you can define styles here
    MouseArea {
        anchors.fill: parent
        onClicked: {
            // Add your click action here
        }
        onPressed: {
            // Optional: Change icon color or size on press for effect
            icon.color = "lightgray"; // Change color on press
        }
        onReleased: {
            icon.color = "white"; // Revert color on release
        }
    }
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

    // Tool buttons with dark background and only icons
    Button {
        width: 35 // Set width for the button
        icon.source: "images/undo.png" // Path to the Undo icon
        icon.color: "white" // Set icon color to white
        icon.width: 22
        icon.height: 22

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Add your click action here
            }
            onPressed: {
                icon.color = "lightgray"; // Change color on press
            }
            onReleased: {
                icon.color = "white"; // Revert color on release
            }
        }
    }

    Button {
        width: 35 // Set width for the button
        icon.source: "images/forward.png" // Path to the Redo icon
        icon.color: "white" // Set icon color to white
        icon.width: 22
        icon.height: 22

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Add your click action here
            }
            onPressed: {
                icon.color = "lightgray"; // Change color on press
            }
            onReleased: {
                icon.color = "white"; // Revert color on release
            }
        }
    }

    Button {
        width: 35 // Set width for the button
        icon.source: "images/delete.png" // Path to the Delete icon
        icon.color: "white" // Set icon color to white
        icon.width: 22
        icon.height: 22

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Add your click action here
            }
            onPressed: {
                icon.color = "lightgray"; // Change color on press
            }
            onReleased: {
                icon.color = "white"; // Revert color on release
            }
        }
    }

    Button {
        width: 35 // Set width for the button
        icon.source: "images/crop.png" // Path to the Crop icon
        icon.color: "white" // Set icon color to white
        icon.width: 22
        icon.height: 22

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Add your click action here
            }
            onPressed: {
                icon.color = "lightgray"; // Change color on press
            }
            onReleased: {
                icon.color = "white"; // Revert color on release
            }
        }
    }

    Button {
        width: 35 // Set width for the button
        icon.source: "images/text.png" // Path to the Text icon
        icon.color: "white" // Set icon color to white
        icon.width: 22
        icon.height: 22

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Add your click action here
            }
            onPressed: {
                icon.color = "lightgray"; // Change color on press
            }
            onReleased: {
                icon.color = "white"; // Revert color on release
            }
        }
    }

    Button {
        width: 35 // Set width for the button
        icon.source: "images/download-speed.png" // Path to the Speed icon
        icon.color: "white" // Set icon color to white
        icon.width: 22
        icon.height: 22

        // Make the background transparent
        background: Rectangle {
            color: "transparent" // Set to transparent to hide the rectangle
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Add your click action here
            }
            onPressed: {
                icon.color = "lightgray"; // Change color on press
            }
            onReleased: {
                icon.color = "white"; // Revert color on release
            }
        }
    }
}




        Text {
            text: "Timeline Size Adjust:"
            color: "white"
            x: 1150
            y: 465
            font.pixelSize: 12
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            width: 20 // Width of the circle
            height: 20 // Height of the circle
            color: "#e0e0e0" // Background color
            radius: 15 // Makes it circular
            x: 1280
            y: 465
            Text {
                text: "-"
                anchors.centerIn: parent // Center text in the circle
                font.pixelSize: 15 // Font size for better visibility
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
            x: 1310
            y: 465
        }

        // Circle for the plus sign
        Rectangle {
            width: 20 // Width of the circle
            height: 20 // Height of the circle
            color: "#e0e0e0" // Background color
            radius: 15 // Makes it circular
            x: 1470
            y: 465
            Text {
                text: "+"
                anchors.centerIn: parent // Center text in the circle
                font.pixelSize: 15 // Font size for better visibility
            }





    }

    Rectangle {
        id: rectangle
        x: 163
        y: 120
        width: 614
        height: 335
        color: "#1A1A1A" // Dark Charcoal Orange
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
        color: "#1A1A1A" // Dark Charcoal Orange
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

    Rectangle
    {
        id: rectangleeditbar
        x: 776
        y: 420
        width: 1145
        height: 1
        color: "#808080"
    }

 // Main content area
}
