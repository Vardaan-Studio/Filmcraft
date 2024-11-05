import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15



Window {
    id: mainWindow
    visible: true
    width: 1920
    height: 1080
    flags: Qt.FramelessWindowHint 
    visibility: Window.Maximized 

    Rectangle
     {
        anchors.fill: parent
        color: "#1F1F1F" 
    }

    property string closeIcon: "images/close-white.png"
    property string minimizeIcon: "images/minimize-white.png"

    property int minimizeIconWidth: 18 
    property int minimizeIconHeight: 18  
 
    property int closeIconWidth: 26  
    property int closeIconHeight: 26  

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
                color: "#212121"
                radius: 5
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

       Button {
    width: 45
    height: 35
    background: Rectangle {
        color: "#212121"
        radius: 5
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
        console.log("Button clicked. Current visibility:", mainWindow.visibility);
        console.log("Current state:", mainWindow.isMaximized ? "Maximized" : "Normal");

        if (mainWindow.isMaximized) {
            console.log("Restoring window to normal size.");
            mainWindow.showNormal(); 
            mainWindow.width = 1600; 
            mainWindow.height = 900;  
            maximizeIconImage.source = "images/maximise-white.png"; 
        } else {
            console.log("Maximizing the window.");
            mainWindow.showMaximized(); 
            maximizeIconImage.source = "images/maximised-white.png"; 
        }

        
        console.log("Current icon source:", maximizeIconImage.source);
    }

    
    Component.onCompleted: {
        console.log("Initial icon source:", maximizeIconImage.source);
    }
}




        Button {
            width: 45
            height: 35
            background: Rectangle {
                color: "#FF4500"
                radius: 5
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
        height: 60

        
        Image {
            id: logo
            source: "images/vardaan.png" 
            width: 130
            height: 50
            fillMode: Image.PreserveAspectFit
        }

        
        MenuBar {
            anchors.verticalCenter: parent.verticalCenter
                    background: Color.black 

    Menu {
    title: "File"
    
   

    MenuItem {
    Item {
        width: parent.width
        height: parent.height

        
        Rectangle {
            anchors.fill: parent
            color: "#222222" 
        }

        
        Text {
            text: "New Project\t                     Ctrl+N"
            anchors.centerIn: parent
            color: "white" 
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
            text: "Import Media\t                      Ctrl+I"
            anchors.centerIn: parent
            color: "white" 
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
            color: "#222222" 
        }

        Text {
            text: "Save Project\t                     Ctrl+S"
            anchors.centerIn: parent
            color: "white" 
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
            text: "Save Project As           Ctrl+Shift+S"
            anchors.centerIn: parent
            color: "white" 
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
                leftPadding: 10 
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
            text: "Exit\t                    Alt+F4"
            anchors.centerIn: parent
            color: "white" 
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
            color: "#222222" 
        }

        Text {
            text: "Undo\t                      Ctrl+Z" 
            color: "white" 
            anchors.left: parent.left 
            anchors.verticalCenter: parent.verticalCenter 
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
            text: "Redo\t                      Ctrl+Y" 
            color: "white" 
            anchors.left: parent.left 
            anchors.verticalCenter: parent.verticalCenter 
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
            text: "Cut\t                     Ctrl+X" 
            color: "white" 
            anchors.left: parent.left 
            anchors.verticalCenter: parent.verticalCenter 
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
            text: "Copy\t                     Ctrl+C" 
            color: "white" 
            anchors.left: parent.left 
            anchors.verticalCenter: parent.verticalCenter 
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
            text: "Paste\t                     Ctrl+V" 
            color: "white" 
            anchors.left: parent.left 
            anchors.verticalCenter: parent.verticalCenter 
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
            text: "Delete\t                     Delete" 
            color: "white" 
            anchors.left: parent.left 
            anchors.verticalCenter: parent.verticalCenter 
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
        text: "Show Properties                    Alt+E"
        onTriggered: propertiesDialog.open()
        Shortcut {
            sequence: "Alt+E"
            onActivated:
            {
                propertiesDialog.open()  

            }
        }
    }

    Menu {
        title: "Video"
        
        MenuItem {
            text: "Crop & Zoom\t                     Alt+C"
            Shortcut {
                sequence: "Alt+C"
                onActivated: console.log("Crop & Zoom Triggered") 
            }
        }

        MenuItem {
            text: "Crop to Fit\t                     Ctrl+F"
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
            text: "Detach Audio\t              Ctrl+Alt+D"
            Shortcut {
                sequence: "Ctrl+Alt+D"
                onActivated: console.log("Detach Audio Triggered") 
            }
        }

        MenuItem {
            text: "Mute\t           Ctrl+Shift+M"
            Shortcut {
                sequence: "Ctrl+Shift+M"
                onActivated: console.log("Mute Triggered") 
            }
        }
    }

    Menu {
        title: "Color Correction"
        
        MenuItem {
            text: "Correction Palette                Alt+M"
            Shortcut {
                sequence: "Alt+M"
                onActivated: console.log("Correction Palette Triggered") 
            }
        }
    }

    MenuItem {
        text: "Speed Control" 
        onTriggered: speedControlDialog.open()
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
    width: 500   
    height: 500  
    x: (width - 250) / 2 
    y: (height - 250) / 2 

    
    Loader {
        id: loader
        source: "Customspeed.qml"
        anchors.fill: parent 
    }

    
    Row {
        spacing: 20
        x: 150
        y: 250
        anchors.horizontalCenter: parent.horizontalCenter 

        Button {
            text: "OK"
            width: 80
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
        title: "Properties"
        modal: true
        standardButtons: Dialog.Ok | Dialog.Cancel

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
        text: "Play/Pause\t                      Space"
        Shortcut {
            sequence: "Space"
            onActivated: console.log("Play/Pause Triggered") 
        }
    }

    MenuItem {
        text: "Stop\t                      Ctrl+/"
        Shortcut {
            sequence: "Ctrl+/"
            onActivated: console.log("Stop Triggered") 
        }
    }

    MenuItem {
        text: "Full Screen View              Alt+Enter"
        Shortcut {
            sequence: "Alt+Enter"
            onActivated: console.log("Full Screen View Triggered") 
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
    x: 1300
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
}



    
          Row {
    id: featureBar
    y: -14
    anchors.top: logo.bottom
    anchors.leftMargin: 8
    anchors.rightMargin: 33 
    anchors.topMargin: 20 
    anchors.left: parent.left
    anchors.right: parent.right
    height: 200 
    spacing: 30 
    padding: 10 

    
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
            width: 70 
            height: 60 
            color: "transparent" 
            radius: 8 
            anchors.verticalCenter: parent.verticalCenter
            anchors.margins: 5 

            MouseArea {
                anchors.fill: parent 
                cursorShape: Qt.PointingHandCursor 
                onClicked: {
                    
                    console.log(modelData.name + " clicked");
                }
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
                    horizontalAlignment: Text.AlignHCenter
                    color: "#FFFFFF" 
                }
            }
        }
    }
}




    Row {
    id: editingBar
    anchors.top: featureBar.bottom 
    anchors.topMargin: 238
    anchors.horizontalCenterOffset: 283 
    anchors.horizontalCenter: parent.horizontalCenter 
    spacing: 10 
    height: 50 

    
    Button {
        width: 40 
        icon.source: "images/step-back.png" 
        icon.color: "white" 
        icon.width: 16
        icon.height: 16

        
        background: Rectangle {
            color: "transparent" 
        }
    }

    
    Button {
        width: 40 
        icon.source: "images/step-forward.png" 
        icon.color: "white" 
        icon.width: 16
        icon.height: 16

        
        background: Rectangle {
            color: "transparent" 
        }
    }

    
    Button {
        width: 40 
        icon.source: "images/pause.png" 
        icon.color: "white" 
        icon.width: 16
        icon.height: 16

        
        background: Rectangle {
            color: "transparent" 
        }
    }

    
    Button {
        width: 40 
        icon.source: "images/stop.png" 
        icon.color: "white" 
        icon.width: 16
        icon.height: 16

        
        background: Rectangle {
            color: "transparent" 
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
    width: 40 
    icon.source: "images/high-volume.png" 
    icon.color: "white" 
    icon.width: 16
    icon.height: 16

    
    background: Rectangle {
        color: "transparent" 
    }

    
    MouseArea {
        anchors.fill: parent
        onClicked: {
            
        }
        onPressed: {
            
            icon.color = "lightgray"; 
        }
        onReleased: {
            icon.color = "white"; 
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
    }

    
    MouseArea {
        anchors.fill: parent
        onClicked: {
            
        }
        onPressed: {
            
            icon.color = "lightgray"; 
        }
        onReleased: {
            icon.color = "white"; 
        }
    }
}

    }
}


    
    Row {
    id: toolBar
    anchors.top: featureBar.bottom
    anchors.leftMargin: 0 
    anchors.topMargin: 272.5
    anchors.horizontalCenterOffset: 0 
    anchors.horizontalCenter: parent.horizontalCenter 
    anchors.left: parent.left
    anchors.right: parent.right
    spacing: 20 
    height: 50 

    
    Button {
        width: 35 
        icon.source: "images/undo.png" 
        icon.color: "white" 
        icon.width: 22
        icon.height: 22

        
        background: Rectangle {
            color: "transparent" 
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                
            }
            onPressed: {
                icon.color = "lightgray"; 
            }
            onReleased: {
                icon.color = "white"; 
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
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                
            }
            onPressed: {
                icon.color = "lightgray"; 
            }
            onReleased: {
                icon.color = "white"; 
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
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                
            }
            onPressed: {
                icon.color = "lightgray"; 
            }
            onReleased: {
                icon.color = "white"; 
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
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                
            }
            onPressed: {
                icon.color = "lightgray"; 
            }
            onReleased: {
                icon.color = "white"; 
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
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                
            }
            onPressed: {
                icon.color = "lightgray"; 
            }
            onReleased: {
                icon.color = "white"; 
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
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                
            }
            onPressed: {
                icon.color = "lightgray"; 
            }
            onReleased: {
                icon.color = "white"; 
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
            width: 20 
            height: 20 
            color: "#e0e0e0" 
            radius: 15 
            x: 1280
            y: 465
            Text {
                text: "-"
                anchors.centerIn: parent 
                font.pixelSize: 15 
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
            width: 20 
            height: 20 
            color: "#e0e0e0" 
            radius: 15 
            x: 1470
            y: 465
            Text {
                text: "+"
                anchors.centerIn: parent 
                font.pixelSize: 15 
            }





    }

    Rectangle {
        id: rectangle
        x: 163
        y: 120
        width: 614
        height: 335
        color: "#1F1F1F"
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
        color: "#1F1F1F"
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

 
}
