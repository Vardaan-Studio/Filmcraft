import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 600
    height: 500
    visible: true
    title: "Export Window"
    color: "#1f1f1f"

    Column {
        anchors.centerIn: parent
        spacing: 15

        Text {
            text: "Export"
            font.pixelSize: 20
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Row for Local, Web, and other horizontal tab buttons
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width * 0.9
            spacing: 30

            Button {
                width: 80
                height: 30
                font.bold: true
                background: Rectangle { color: "transparent" }
                contentItem: Text {
                    text: "Local"
                    color: "#ffffff"
                    font.bold: true
                    anchors.centerIn: parent
                }
            }

            Button {
                width: 80
                height: 30
                font.bold: true
                background: Rectangle { color: "transparent" }
                contentItem: Text {
                    text: "Web"
                    color: "#ffffff"
                    font.bold: true
                    anchors.centerIn: parent
                }
            }

            Button {
                width: 80
                height: 30
                font.bold: true
                background: Rectangle { color: "transparent" }
                contentItem: Text {
                    text: "Cloud"
                    color: "#ffffff"
                    font.bold: true
                    anchors.centerIn: parent
                }
            }

            Button {
                width: 80
                height: 30
                font.bold: true
                background: Rectangle { color: "transparent" }
                contentItem: Text {
                    text: "Drive"
                    color: "#ffffff"
                    font.bold: true
                    anchors.centerIn: parent
                }
            }

            // Add more tab buttons here if needed...
        }

        // Main row for Format buttons on left and Export fields on right
        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 30

            // Column for MP4 and other format buttons (Vertical layout, on the left)
            Column {
                spacing: 10

                Button {
                    width: 150
                    height: 30
                    background: Rectangle { color: "transparent" }
                    contentItem: Text {
                        text: "MP4"
                        color: "#ffffff"
                        anchors.centerIn: parent
                    }
                }

                Button {
                    width: 150
                    height: 30
                    background: Rectangle { color: "transparent" }
                    contentItem: Text {
                        text: "AVI"
                        color: "#ffffff"
                        anchors.centerIn: parent
                    }
                }

                Button {
                    width: 150
                    height: 30
                    background: Rectangle { color: "transparent" }
                    contentItem: Text {
                        text: "MKV"
                        color: "#ffffff"
                        anchors.centerIn: parent
                    }
                }
            }

            // Column for Export fields on the right
            Column {
                spacing: 15

                Text {
                    text: "Export to file and save on computer"
                    font.bold: true
                    font.pixelSize: 18
                    color: "#ffffff"
                }

                Row {
                    spacing: 10
                    Text { text: "Name:"; color: "#ffffff" }
                    TextField {
                        width: 300
                        placeholderText: "Enter file name"
                    }
                }

                Row {
                    spacing: 10
                    Text { text: "Save to:"; color: "#ffffff" }
                    TextField {
                        width: 250
                        text: "D:/Ujjain Trip Memories/Media"
                        readOnly: true
                    }
                    Button {
                        width: 80
                        height: 25
                        background: Rectangle { color: "#ff4500" }
                        contentItem: Text {
                            text: "Browse"
                            color: "#ffffff"
                            anchors.centerIn: parent
                        }
                    }
                }

                Column {
                    spacing: 10
                    Row {
                        spacing: 10
                        Text { text: "Resolution:"; color: "#ffffff" }
                        ComboBox {
                            width: 150
                            model: ["720x1280", "1080x1920", "4K (3840x2160)"]
                            currentIndex: 1
                        }
                    }
                    Row {
                        spacing: 10
                        Text { text: "Frame Rate:"; color: "#ffffff" }
                        ComboBox {
                            width: 100
                            model: ["24 fps", "30 fps", "60 fps"]
                            currentIndex: 2
                        }
                    }
                    Row {
                        spacing: 10
                        Text { text: "Size:"; color: "#ffffff" }
                        Text { text: "121.6 MB"; color: "gray" }
                    }
                    Row {
                        spacing: 10
                        Text { text: "Duration:"; color: "#ffffff" }
                        Text { text: "00:01:07"; color: "gray" }
                    }
                }

                // Row for Settings and Export buttons, aligned next to each other
                Row {
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter

                    Button {
                        width: 100
                        background: Rectangle { color: "#ff4500" }
                        contentItem: Text {
                            text: "SETTINGS"
                            color: "#ffffff"
                            anchors.centerIn: parent
                        }
                       
                    }
                    

                    Button {
                        width: 100
                        background: Rectangle { color: "#ff4500" }
                        contentItem: Text {
                            text: "EXPORT"
                            color: "#ffffff"
                            anchors.centerIn: parent
                        }
                        onClicked: console.log("Export clicked")
                    }
                }
            }
        }
    }
}