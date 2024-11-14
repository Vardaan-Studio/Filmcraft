import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15 
import QtQuick.Dialogs 


Window {
    id: mainWindow
    visible: true
    flags: Qt.FramelessWindowHint 
    visibility: Window.Maximized 
    onVisibilityChanged: {
        if (visibility === Window.Maximized) {
            mainWindow.width = Screen.width
            mainWindow.height = Screen.height
        } else {
            mainWindow.width = 1920
            mainWindow.height = 1080
        }
    }

    Rectangle
     {
        anchors.fill: parent
        color: "#1F1F1F" 
        Image {
        anchors.fill: parent
        source: "images/bg7.jpg"
        fillMode: Image.PreserveAspectCrop  // This will ensure the image covers the entire area of the rectangle.
    }
    }

    property string closeIcon: "images/close.png"
    property string minimizeIcon: "images/minimize-white.png"

    property int minimizeIconWidth: 18 
    property int minimizeIconHeight: 18  
 
    property int closeIconWidth: 21 
    property int closeIconHeight: 21  

Rectangle {
    anchors.top: parent.top
    width: parent.width
    height: 40
    color: "#1F1F1F"

    Row {
        anchors.right: parent.right
        spacing: 1.5

        Button {
    width: 45
    height: 35
    background: Rectangle {
        id: buttonBackground
        color: "#1F1F1F"
        radius: 5
        property color hoverColor: "#FF4500"  

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                buttonBackground.color = buttonBackground.hoverColor; 
            }
            onExited: {
                buttonBackground.color = "#1F1F1F";  
            }
        }
    }

    Image {
        source: minimizeIcon
        anchors.centerIn: parent
        width: minimizeIconWidth  
        height: minimizeIconHeight 
        fillMode: Image.PreserveAspectFit 
    }

    onClicked: {
        mainWindow.showMinimized();
    }
}

//for maximise button

    Button {
        width: 45
        height: 35
        background: Rectangle {
            id: maximizeButtonBackground
            color: "#1F1F1F"
            radius: 5
            property color hoverColor: "#FF4500"

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    maximizeButtonBackground.color = maximizeButtonBackground.hoverColor;
                }
                onExited: {
                    maximizeButtonBackground.color = "#1F1F1F";
                }
            }
        }

        Image {
            id: maximizeIconImage  
            source: "images/maximise-white.png" 
            anchors.centerIn: parent
            width: 16  
            height: 16 
            fillMode: Image.PreserveAspectFit
        }

        onClicked: {
            if (mainWindow.visibility === Window.Maximized) {
                mainWindow.showNormal(); 
                mainWindow.width = 900; 
                mainWindow.height = 450;  
                maximizeIconImage.source = "images/maximised-white.png"; 
            } else {
                mainWindow.showMaximized(); 
                maximizeIconImage.source = "images/maximise-white.png"; 
            }
        }
    }
       //close button

        Button {
            width: 45
            height: 35
            background: Rectangle {
                color: "#1F1F1F"
                radius: 4
            }

            
            Image {
                source: closeIcon
                anchors.centerIn: parent
                width: closeIconWidth  
                height: closeIconHeight 
                fillMode: Image.PreserveAspectFit
            }

            onClicked: {
                
                Qt.quit();
            }
        }
    }
}

    Row {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 10
        height: 35

        
        Image {
            id: logo
            source: "images/vardaan.png" 
            width: 120
            height: 35
            fillMode: Image.PreserveAspectFit
        }

        
        MenuBar {
            anchors.verticalCenter: parent.verticalCenter
            background: Color.black 
            

    Menu {
    id: fileMenu
    title: qsTr("File")
    

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "New Project"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 
            }

            Text {
                text: "Ctrl+N"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 
            }
        }

        Shortcut {
            sequence: "Ctrl+N"
            onActivated: console.log("New Project Triggered")
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Import Media"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 
            }

            Text {
                text: "Ctrl+I"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 
            }
        }

        Shortcut {
            sequence: "Ctrl+I"
            onActivated: console.log("Import Media Triggered")
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#212121"
            }

            Text {
                text: "Save Project"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05
            }

            Text {
                text: "Ctrl+S"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 
            }
        }

        Shortcut {
            sequence: "Ctrl+S"
            onActivated: console.log("Save Project Triggered")
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Save Project As"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 
            }

            Text {
                text: "Ctrl+Shift+S"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 
            }
        }

        Shortcut {
            sequence: "Ctrl+Shift+S"
            onActivated: console.log("Save Project As Triggered")
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Item {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width

                Text {
                    text: "Project Settings"
                    color: "white"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    leftPadding: parent.width * 0.05 // 5% of the menu width
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
                color: "#222222"
            }

            Text {
                text: "Exit"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 // 5% of the menu width
            }

            Text {
                text: "Alt+F4"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 // 5% of the menu width
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
    title: qsTr("Edit")

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Undo"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 // 5% of the menu width
            }

            Text {
                text: "Ctrl+Z"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 // 5% of the menu width
            }

            Shortcut {
                sequence: "Ctrl+Z"
                onActivated: console.log("Undo Triggered")
            }
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Redo"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 // 5% of the menu width
            }

            Text {
                text: "Ctrl+Y"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 // 5% of the menu width
            }

            Shortcut {
                sequence: "Ctrl+Y"
                onActivated: console.log("Redo Triggered")
            }
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Cut"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 // 5% of the menu width
            }

            Text {
                text: "Ctrl+X"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 // 5% of the menu width
            }

            Shortcut {
                sequence: "Ctrl+X"
                onActivated: console.log("Cut Triggered")
            }
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Copy"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 // 5% of the menu width
            }

            Text {
                text: "Ctrl+C"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 // 5% of the menu width
            }

            Shortcut {
                sequence: "Ctrl+C"
                onActivated: console.log("Copy Triggered")
            }
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Paste"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 // 5% of the menu width
            }

            Text {
                text: "Ctrl+V"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 // 5% of the menu width
            }

            Shortcut {
                sequence: "Ctrl+V"
                onActivated: console.log("Paste Triggered")
            }
        }
    }

    MenuItem {
        Item {
            width: parent.width
            height: parent.height

            Rectangle {
                anchors.fill: parent
                color: "#222222"
            }

            Text {
                text: "Delete"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width * 0.05 // 5% of the menu width
            }

            Text {
                text: "Delete"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05 // 5% of the menu width
            }

            Shortcut {
                sequence: "Delete"
                onActivated: console.log("Delete Triggered")
            }
        }
    }
}




    Menu {
    title: "Tools"
    
    MenuItem {

        Item

        {
            width: parent.width
            height: parent.height

            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Show Properties"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                    onClicked: propertiesDialog.open()
                }
            }

            Text
            {
                text: "Alt+E"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05
            }
            Shortcut
            {
                sequence: "Alt+E"
                onActivated:propertiesDialog.open()
            }
        }
       
        }
    

    Menu {
        id: video
        title: "Video"
        
        MenuItem {
            text: "Crop & Zoom"
            Shortcut {
                sequence: "Alt+C"
                onActivated: console.log("Crop & Zoom Triggered") 
            }
        }

        MenuItem {
            text: "Crop to Fit"
            Shortcut {
                sequence: "Ctrl+F"
                onActivated: console.log("Crop to Fit Triggered") 
            }
        }
    }

   
    

    Menu {
        title: "Audio"
        
        MenuItem {
            text: "Adjust Audio" 
            onClicked: {
            audioAdjustDialog.open() 
            }
        }

        MenuItem {
            text: "Detach Audio"
            Shortcut {
                sequence: "Ctrl+Alt+D"
                onActivated: console.log("Detach Audio Triggered") 
            }
        }

        MenuItem {
            text: "Mute"
            Shortcut {
                sequence: "Ctrl+Shift+M"
                onActivated: console.log("Mute Triggered") 
            }
        }
    }

    Menu {
        title: "Color Correction"
        
        MenuItem {
            text: "Correction Palette"
            Shortcut {
                sequence: "Alt+M"
                onActivated: console.log("Correction Palette Triggered") 
            }
        }
    }

    MenuItem {
        Item
        {
            width: parent.width
            height: parent.height

            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Speed Control"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                    onClicked: speedControlDialog.open()

                }
            }
        }
    }
}

    Dialog {
    id: audioAdjustDialog
    modal: true
   

    contentItem: Loader {
        source: "AudioAdjust.qml" 
    }
}



    Dialog {
    id: speedControlDialog
    title: "Custom Speed Control"
    modal: true
    width: 776
    height: 405

    x: -150 
    y: 35 

    // Set the background color directly on the Dialog
    background: Rectangle {
        color: "#1F1F1F" // Background color
        radius: 4 // Optional: for rounded corners
    }

    Loader {
        id: loader
        source: "Customspeed.qml"
        anchors.fill: parent 
    }

    Row {
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 250 // Adjust this value as needed
        anchors.leftMargin: 20  // Set left margin to position buttons

        Button {
            text: "OK"
            width: 80
            height: 32 // Set a fixed height
            background: Rectangle {
                color: "#ffa500"
                radius: 4
            }
            onClicked: {
                speedControlDialog.close(); 
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
                speedControlDialog.close() 
            }
        }
    }
}

    Dialog {
    id: propertiesDialog
    width: 776
    height: 403
    x: -200
    y: 36
    title: "Properties"
    modal: true
    standardButtons: Dialog.Ok | Dialog.Cancel

    // Set background color
    Rectangle {
        anchors.fill: parent
        color: "#1F1F1F"
        radius: 5  // Optional: rounded corners
    }

    Column {
        width: 300
        spacing: 10

        ComboBox {
            id: optionsSelector
            model: ["Transform", "Compositing", "Chroma Key"]
            width: parent.width 
        }

        Loader {
            id: contentLoader
            width: parent.width
            height: 200 

            sourceComponent: optionsSelector.currentIndex === 2 ? chromaKeyComponent : null
        }
    }

    Component {
        id: chromaKeyComponent
        Chromakey { } 
    }
}


Menu {
    title: "View"

    MenuItem {
        Item
        {
            width: parent.width
            height: parent.height

            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Play/Pause"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                }
            }
            Text
            {
                text: "Space"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05
            }
            Shortcut
            {
                sequence: "Space"
            }
        }
    }

    MenuItem {
        Item

        {
            width: parent.width
            height: parent.height

            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Stop"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                }
            }

            Text
            {
                text: "Ctrl+/"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05
            }
            Shortcut
            {
                sequence: "Ctrl+/"
            }
        }
    }

    MenuItem {
        Item

        {
            width: parent.width
            height: parent.height

            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Full Screen View"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                }
            }

            Text
            {
                text: "Alt+Enter"
                color: "white"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                rightPadding: parent.width * 0.05
            }
            Shortcut
            {
                sequence: "Alt+Enter"
            }
        }
    }
}


            Menu {
                title: "Help"
    MenuItem 
    { 
                    
        Item

        {
            width: parent.width
            height: parent.height

            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Mail Us"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                }
            }
        }
 }
                
    MenuItem 
    { 
        Item
        {
            width: parent.width
            height: parent.height

            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Suggest Feature"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                }
            }
        }
       
        
    }
    MenuItem 
    { 
        Item
        {
            width: parent.width
            height: parent.height
            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "Feedback"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                }
            }
        }
       
        
    }
    MenuItem 
    { 
                Item
        {
            width: parent.width
            height: parent.height
            Rectangle
            {
                anchors.fill: parent
                color: "#222222"
            }
            Text
            {
                text: "About Vardaan Studio"
                color: "white"
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                leftPadding: parent.width *0.05
                MouseArea
                {
                    anchors.fill: parent
                }
            }
        }
    }
            }
        }
    }

  Button {
    x: 650
    y: 70
    width: 80
    height: 32
    font.pixelSize: 14
    font.bold: true
    onClicked: exportDialog.open()
    

    contentItem: Text {
        text: "Export"
        color: "white"
        font.pixelSize: 14
        font.bold: true
        anchors.centerIn: parent 
        verticalAlignment: Text.AlignVCenter 
        horizontalAlignment: Text.AlignHCenter 
    }

    background: Rectangle {
        width: parent.width
        height: parent.height
        radius: 15 
        color: "#FF4500" 
    }
    Shortcut {
        sequence: "Ctrl+E"
        onActivated: exportDialog.open()
    }
}

    Dialog {
    id: exportDialog
    modal: true
    width: 600
    height: 440
    closePolicy: Popup.CloseOnEscape

    x: (parent.width - width) / 2
    y: (parent.height - height) / 2

    background: Rectangle {
        color: "#1F1F1F"
        radius: 4
    }

    Loader {
        id: loaderexport
        source: "Export_Media.qml"
        anchors.fill: parent 
    }

    Rectangle {
        anchors.top: parent.top
        width: parent.width
        height: 40
        color: "#1F1F1F"

        Row {
            anchors.right: parent.right
            Button {
                width: 45
                height: 35
                background: Rectangle {
                    color: "#FF4500"
                    radius: 4
                }

                Image {
                    source: closeIcon
                    anchors.centerIn: parent
                    width: closeIconWidth
                    height: closeIconHeight
                    fillMode: Image.PreserveAspectFit
                }

                onClicked: {
                    exportDialog.close();  // Close only the dialog, not the entire application
                }
            }
        }
    }
}





    
          Row {
    id: featureBar
    y: -10
    anchors.top: logo.bottom
    anchors.leftMargin: 8
    anchors.rightMargin: 33 
    anchors.topMargin: 20 
    anchors.left: parent.left
    anchors.right: parent.right
    height: 200 
    spacing: 18 
    padding: 10 

    Repeater {
        model: [
            { name: "Media", icon: "images/soundtrack.png" },
            { name: "Text", icon: "images/text.png"},
            { name: "Transition", icon: "images/exchange.png" },
            { name: "Effects", icon: "images/effects.png" },
            { name: "Filters", icon: "images/magic-wand.png" },
            { name: "Colour Grade", icon: "images/color-palette.png" }
        ]

        delegate: Rectangle {
            width: 70 
            height: 60 
            color: "transparent" 
            radius: 8 
            anchors.verticalCenter: parent.verticalCenter
            anchors.margins: 5 

            property color normalColor: "#FFFFFF"
            property color hoverColor: "#FF4500" 
            property color currentColor: normalColor 

            MouseArea {
                anchors.fill: parent 
                cursorShape: Qt.PointingHandCursor 
                hoverEnabled: true 

                onEntered: currentColor = hoverColor;
                onExited: currentColor = normalColor;
            }

            Column {
                anchors.centerIn: parent
                spacing: 5

                Image {
                    source: modelData.icon
                    width: 25 
                    height: 25 
                    fillMode: Image.PreserveAspectFit
                    anchors.horizontalCenter: parent.horizontalCenter 
                    anchors.left: parent.left 
                    anchors.leftMargin: modelData.name === "Colour Grade" ? modelData.offset : 0 
                }

                Text {
                    text: modelData.name
                    font.pixelSize: 10 
                    width: 50  
                    height: 21  
                    horizontalAlignment: Text.AlignHCenter
                    color: currentColor 
                }
            }
        }
    }
}



    Row {
    id: editingBar
    anchors.top: featureBar.bottom 
    anchors.topMargin: 234.5
    anchors.horizontalCenterOffset: 283 
    anchors.horizontalCenter: parent.horizontalCenter 
    spacing: 10 
    height: 50 

    
    property color normalColor: "transparent"
    property color hoverColor: "#FF4500"

    Button {
        width: 30
        icon.source: "images/step-back.png" 
        icon.width: 16
        icon.color: "white" 
        icon.height: 16

        background: Rectangle {
            color: editingBar.normalColor 

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = editingBar.hoverColor
                onExited: parent.color = editingBar.normalColor
            }
        }
    }

    Button {
        width: 30
        icon.source: "images/step-forward.png" 
        icon.color: "white" 
        icon.width: 16
        icon.height: 16

        background: Rectangle {
            color: editingBar.normalColor

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = editingBar.hoverColor
                onExited: parent.color = editingBar.normalColor
            }
        }
    }

    Button {
        width: 30
        icon.source: "images/pause.png" 
        icon.color: "white" 
        icon.width: 16
        icon.height: 16

        background: Rectangle {
            color: editingBar.normalColor

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = editingBar.hoverColor
                onExited: parent.color = editingBar.normalColor
            }
        }
    }

    Button {
        width: 30
        icon.source: "images/stop.png" 
        icon.color: "white" 
        icon.width: 16
        icon.height: 16

        background: Rectangle {
            color: editingBar.normalColor

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = editingBar.hoverColor
                onExited: parent.color = editingBar.normalColor
            }
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
        anchors.bottomMargin: 46 
        spacing: 10 

         Button {
    width: 30 
    icon.source: "images/camera.png" 
    icon.color: "white" 
    icon.width: 16
    icon.height: 16

    background: Rectangle {
        color: "transparent"  
        property color hoverColor: "#FF4500"  

    
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.color = parent.hoverColor  
            onExited: parent.color = "transparent"  
            onPressed: icon.color = "lightgray"  
            onReleased: icon.color = "white"  
        }
    }
}

        
       Button {
    width: 30 
    icon.source: "images/high-volume.png" 
    icon.color: "white" 
    icon.width: 16
    icon.height: 16


    background: Rectangle {
        color: "transparent"  
        property color hoverColor: "#FF4500"  

    
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.color = parent.hoverColor  
            onExited: parent.color = "transparent"  
            onPressed: icon.color = "lightgray"  
            onReleased: icon.color = "white"  
        }
    }
}

        
        Button {
    width: 30 
    icon.source: "images/full-screen.png" 
    icon.color: "white" 
    icon.width: 16
    icon.height: 16

    background: Rectangle {
        color: "transparent"  
        property color hoverColor: "#FF4500"  

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.color = parent.hoverColor  
            onExited: parent.color = "transparent"  
            onPressed: icon.color = "lightgray"  
            onReleased: icon.color = "white"  
        }
    }
}
    }
       }

    
    Row {
    id: toolBar
    anchors.top: featureBar.bottom
    anchors.leftMargin: 0
    anchors.topMargin: 269
    anchors.horizontalCenterOffset: 0
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.left: parent.left
    anchors.right: parent.right  // Ensures the row spans the entire width of the parent
    spacing: 20
    height: 50
    width: parent.width  // Dynamically adjust width to match parent's width

    
    Button {
        width: 35 
        icon.source: "images/undo.png" 
        icon.color: "white" 
        icon.width: 22
        icon.height: 22

        background: Rectangle {
            color: "transparent" 
            property color hoverColor: "#FF4500"

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = parent.hoverColor
                onExited: parent.color = "transparent"
                onPressed: icon.color = "lightgray"
                onReleased: icon.color = "white"
            }
        }
    }

    Button {
        width: 35 
        icon.source: "images/forward.png" 
        icon.color: "white" 
        icon.width: 22
        icon.height: 22

        background: Rectangle {
            color: "transparent"
            property color hoverColor: "#FF4500"

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = parent.hoverColor
                onExited: parent.color = "transparent"
                onPressed: icon.color = "lightgray"
                onReleased: icon.color = "white"
            }
        }
    }

    Button {
        width: 35 
        icon.source: "images/delete.png" 
        icon.color: "white" 
        icon.width: 22
        icon.height: 22

        background: Rectangle {
            color: "transparent"
            property color hoverColor: "#FF4500"

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = parent.hoverColor
                onExited: parent.color = "transparent"
                onPressed: icon.color = "lightgray"
                onReleased: icon.color = "white"
            }
        }
    }

    Button {
        width: 35 
        icon.source: "images/crop.png" 
        icon.color: "white" 
        icon.width: 22
        icon.height: 22

        
        background: Rectangle {
            color: "transparent" 
            property color hoverColor: "#FF4500"
        

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.color=parent.hoverColor
            onExited: parent.color="transparent"
            onPressed: icon.color="lightgray"
            onReleased: icon.color="white"
        }
    }
    }

    Button {
        width: 35 
        icon.source: "images/text.png" 
        icon.color: "white" 
        icon.width: 22
        icon.height: 22

        
        background: Rectangle {
            color: "transparent"
            property color hoverColor: "#FF4500" 
        

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.color=parent.hoverColor
            onExited: parent.color= "transparent"
            onPressed: icon.color= "lightgray"
            onReleased: icon.color= "white"
        }
    }
    }

    Button {
        width: 35 
        icon.source: "images/download-speed.png" 
        icon.color: "white" 
        icon.width: 22
        icon.height: 22

        
        background: Rectangle {
            color: "transparent" 
            property color hoverColor: "#FF4500"

        

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onEntered: parent.color = parent.hoverColor
            onExited: parent.color = "transparent"
            onPressed: icon.color = "lightgray"
            onReleased: icon.color = "white"
            
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

       property int incrementValue: 7

Rectangle {
    width: 30
    height: 25 
    color: "#1F1F1F"         
    border.color: "#FF4500"  
    border.width: 1           
    radius: 15 
    x: 1275
    y: 465

    MouseArea {
        anchors.fill: parent 
        cursorShape: Qt.PointingHandCursor 
        hoverEnabled: true  

        onClicked: {
            timelineSizeSlider.value = Math.max(timelineSizeSlider.value - incrementValue, timelineSizeSlider.from);
        }

        onEntered: {
            parent.color = "#FF4500"; 
        }
        onExited: {
            parent.color = "#1F1F1F"; 
        }
    }

    Text {
        text: "-"
        anchors.centerIn: parent 
        font.pixelSize: 15 
        color: "white" 
        font.bold: true        
    }
}

Slider {
    id: timelineSizeSlider
    width: 150 
    from: 0 
    to: 100 
    stepSize: 1 
    x: 1310
    y: 465
}

Rectangle {
    width: 30
    height: 25 
    color: "#1F1F1F"
    border.color: "#FF4500"  
    border.width: 1 
    radius: 15 
    x: 1470
    y: 465

    MouseArea {
        anchors.fill: parent 
        cursorShape: Qt.PointingHandCursor 
        hoverEnabled: true  

        onClicked: {
            timelineSizeSlider.value = Math.min(timelineSizeSlider.value + incrementValue, timelineSizeSlider.to);
        }

        onEntered: {
            parent.color = "#FF4500"; 
        }
        onExited: {
            parent.color = "#1F1F1F"; 
        }
    }

    Text {
        text: "+"
        anchors.centerIn: parent 
        font.pixelSize: 15 
        color: "white" 
        font.bold: true 
        verticalAlignment: Text.AlignVCenter 
        horizontalAlignment: Text.AlignHCenter 
    }
}

Rectangle {
    id: rectangle
    x: 163
    y: 120
    width: 614
    height: 335
    color: "transparent"
    border.width: 1
    border.color: "#808080"

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            fileDialog.open()  // Open the file dialog when clicked
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 10 

        Image {
            source: "images/import.png"
            width: 100  
            height: 100 
            anchors.horizontalCenter: parent.horizontalCenter  
        }

        Text {
            text: "Click here to import media."
            color: "white"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter  
        }
    }

    FileDialog {
        id: fileDialog
        title: "Select Media File"
        nameFilters: [
            "Supported Files (*.mp4 *.jpg *.png *.mp3)",
            "Video Files (*.mp4)",
            "Audio Files (*.mp3)",
            "Image Files (*.png *.jpg)"
                    ]
        onAccepted: {
            console.log("Selected file: " + fileDialog.fileUrl)  
        }
    }
}

    Rectangle {
    id: previewwindow
    x: 776  
    y: 51
    width: parent.width * 0.8  
    height: 369
    color: "transparent"
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
        color: "transparent"
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
    id: leftAlignment
    x: 0
    y: 52
    width: 1
    height: mainWindow.height - y
    border.color: "#808080"

    onHeightChanged: {
        height = mainWindow.height - y;
    }
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

    Rectangle 
    {
    id: previewwindowright
    x: mainWindow.width - 1  
    y: 51
    width: 1  
    height: mainWindow.height - y  
    border.color: "#808080"
    }


    Rectangle 
    {
    id: rectangletimeline
    x: 0
    y: 500
    width: mainWindow.width 
    height: mainWindow.height - y  
    color: "#161616"
    border.width: 1
    border.color: "#808080"
    }



    Rectangle
    {
        id: rectangletrackcontrol
        x: 0
        y: 500
        width: 200
        height: 1
        border.color: "#808080"
        border.width: 1
    }

      

    Rectangle
    {
        id: trackcontrolvertical
        x: 125
        y: 500
        width: 1
        height: 579
        border.color: "#000000"
    }
}
