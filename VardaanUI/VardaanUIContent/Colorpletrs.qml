import QtQuick 2.15
import QtQuick.Controls 2.15



    Rectangle {
        anchors.fill: parent
        color: "#1f1f1f"


        // Left Side: Preset List
        Column {
            width:190
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            spacing: 50
            padding: 70


        }
        Flickable {
                   id: rectangleList
                   x: -58
                   y: 2
                   width:460
                   height: parent.height
                   contentWidth: parent.width
                   contentHeight: rectanglesColumn.height
                   clip: true

                   // Preset Header
                   Text {
                       text: "Preset"
                       font.bold: true
                       font.pixelSize: 16
                       color: "white"
                       x:65
                       y:6
                       width: 109
                       height: 34
                   }

                   // ComboBox for Presets
                   ComboBox {
                       x: 88
                       y: 46
                       model: ["All Presets", "Preset 1", "Preset 2", "Preset 3", "Preset 4"]
                       width: 300
                       height: 30
                   }

                // Bind the text to the corresponding name

                                                              ListModel {
                                                                      id: rectangleNames
                                                                      ListElement { name: "COOL" }
                                                                      ListElement { name: "WARM" }
                                                                      ListElement { name: "COOL MAX" }
                                                                      ListElement { name: "WARM MAX" }
                                                                      ListElement { name: "BOOST COLOR" }
                                                                      ListElement { name: "SHADOW DETAILS" }
                                                                      ListElement { name: "ELEGANT" }
                                                                      ListElement { name: "BRIGHTEN" }
                                                                      ListElement { name: "DARKEN" }
                                                                      ListElement { name: "FANTASY" }
                                                                      ListElement { name: "FILM STOCK" }
                                                                      ListElement { name: "EPIC" }
                                                                      ListElement { name: "POLAROID" }
                                                                      ListElement { name: "BLACK & WHITE" }
                                                                      ListElement { name: "OLD FILM" }
                                                                      ListElement { name: "BLOCKBUSTER" }
                                                                      ListElement { name: "TV" }
                                                                      ListElement { name: "LOMO" }
                                                                      ListElement { name: "FAR EAST" }
                                                                      ListElement { name: "JUNGLE" }
                                                                      ListElement { name: "VIGNETTE CLASSIC" }
                                                                      ListElement { name: "VIGNETTE 2" }
                                                                      ListElement { name: "VIGNETTE 3" }
                                                                      ListElement { name: "VIGNETTE 4" }
                                                                      ListElement { name: "VIGNETTE 4" }
                                                                      ListElement { name: "VIGNETTE 5" }
                                                                      ListElement { name: "VIGNETTE 6" }
                                                                      ListElement { name: "VIGNETTE 7" }
                                                                      ListElement { name: "VIGNETTE 8" }
                                                                      ListElement { name: "VIGNETTE 9" }
                                                                       ListElement { name: "VIGNETTE 10" }
                                                                       ListElement { name: "007 SERIES" }
                                                                       ListElement { name: "B & W FILM" }
                                                                        ListElement { name: "BATMAN" }
                                                                        ListElement { name: "COOL FILM" }
                                                                        ListElement { name: "DARK FILM" }
                                                                        ListElement { name: "GAME OF THORNES" }
                                                                         ListElement { name: "GREAVITY" }
                                                                        ListElement { name: "HARRY POTTER" }
                                                                        ListElement { name: "HOUSE OF CARD" }
                                                                        ListElement { name: "MISSION IMPOSIBLE" }
                                                                        ListElement { name: "REGIN" }
                                                                        ListElement { name: "SPARTA 300" }
                                                                         ListElement { name: "STAR WARS" }
                                                                        ListElement { name: "WALKING DEAD" }
                                                                        ListElement { name: "WARM FILM" }
                                                                         ListElement { name: "WARM FILM" }


                                                                      // Add more as needed
                                                                  }

                                                                  Column {
                                                                      id: rectanglesColumn
                                                                      x: 50
                                                                      y: 85
                                                                      width: 300
                                                                      spacing: 50
                                                                      padding: 10

                                                                      Repeater {
                                                                          model: rectangleNames.count / 2 // Total pairs of rectangles
                                                                          delegate: Row {
                                                                              spacing: 10
                                                                              width: parent.width

                                                                              // First rectangle in the pair
                                                                              Rectangle {
                                                                                  width: 190
                                                                                  height: 90
                                                                                  color: "#4A6A75"

                                                                                  Text {
                                                                                      anchors.verticalCenter: parent.verticalCenter
                                                                                                              anchors.left: parent.left
                                                                                                              anchors.top: parent.top
                                                                                                              anchors.topMargin: 90
                                                                                                              anchors.leftMargin: 5 // Adjust the margin from the left edge
                                                                                                              text: rectangleNames.get(index * 2).name
                                                                                                              color: "white"
                                                                                                              font.pixelSize: 14
                                                                                  }
                                                                              }

                                                                              // Second rectangle in the pair
                                                                              Rectangle {
                                                                                  width: 190
                                                                                  height: 90
                                                                                  color: "#4A6A75"

                                                                                  Text {
                                                                                      anchors.verticalCenter: parent.verticalCenter
                                                                                                              anchors.left: parent.left
                                                                                                              anchors.top: parent.top
                                                                                                               anchors.topMargin: 90
                                                                                                              anchors.leftMargin: 5 // Adjust the margin from the left edge
                                                                                                              text: rectangleNames.get(index * 2 + 1).name
                                                                                                              color: "white"
                                                                                                              font.pixelSize: 14
                                                                                  }
                                                                              }
                                                                          }
                                                                      }
                                                                  }

                   // Scrollbar for the list of rectangles
                   ScrollBar.vertical: ScrollBar {
                       x: 0
                       y: 0
                       width: 8
                       font.styleName: "Black"
                       scale: 0.9

                       transformOrigin: Item.BottomLeft
                       policy: ScrollBar.AlwaysOn
                   }
               }

        // Right Side: Video Preview and Controls
        Column {
            anchors.fill: parent
            anchors.leftMargin: 429
            anchors.rightMargin: 211
            anchors.topMargin: 39
            anchors.bottomMargin: 8
            spacing: 10
            padding: 10

            Rectangle {
                width: 900
                height: 850
                x:280
                y:80
                color: "#1E282D"

                Text {
                    text: "add vidio"
                    color: "white"
                    font.pixelSize: 18
                    anchors.centerIn: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Arial" // Replace with preferred font
                }


            }

            // Playback and Adjustment Controls
            Row {

                spacing: 10
                anchors.leftMargin: 60

                Button {
                    width: 35 // Set width for the button
                    height: 35
                    icon.source: "images/backward.png" // Path to play Button
                    background: Rectangle {
                                color: "#1f1f1f"  // Button background color
                                radius: 3       // Rounded corners
                            }
                    icon.color: "white" // Set icon color to white
                    icon.width: 16
                    icon.height: 18
                }
                Button {
                    width: 35 // Set width for the button
                    height: 35
                    icon.source: "images/skip-button.png" // Path to play Button
                    background: Rectangle {
                                color: "#1f1f1f"  // Button background color
                                radius: 3       // Rounded corners
                            }
                    icon.color: "white" // Set icon color to white
                    icon.width: 16
                    icon.height: 18

                  }
                Button {


                    width: 35 // Set width for the button
                    height: 35
                    icon.source: "images/play (1).png" // Path to play Button
                        background: Rectangle {
                                    color: "#1f1f1f"  // Button background color
                                    radius: 3       // Rounded corners
                                }
                        icon.color: "white" // Set icon color to white
                        icon.width: 16
                        icon.height: 14
                }
                Button {
                    width: 35 // Set width for the button
                    height: 35
                    icon.source: "images/play.png" // Path to play Button
                    background: Rectangle {
                                color: "#1f1f1f"  // Button background color
                                radius: 3       // Rounded corners
                            }
                    icon.color: "white" // Set icon color to white
                    icon.width: 16
                    icon.height: 15
                }


                Rectangle {
                    width: 600
                    height: Slider.height
                    anchors.centerIn: parent

                    Slider {
                        y: -42
                        height: 83
                        from: 0
                        to: 10
                        value: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 551
                        anchors.rightMargin: -822

                        anchors.right: parent.right
                    }
                }

                Text {
                    color: "white"
                    font.pixelSize: 1 ;styleColor: "#f7f5f5"                }
            }

            // Save & Reset Buttons
            Row {
                spacing: 10

                Rectangle {
                    width: parent.width
                    height: 100
                    color: "lightgray"
                    anchors.centerIn: parent

                    Button {
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.verticalCenterOffset: 930  // Adds space to the left of the button
                        anchors.verticalCenter: parent.verticalCenter

                        contentItem: Text {
                            text: "save as present"
                            color: "white"  // Set text color to white
                            font.bold: true
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }

                        background: Rectangle {
                            color: "#FF4500"
                            radius: 10
                            border.color: "#2bd51c"
                            border.width: 4
                        }
                    }
                }

                Rectangle {
                    width: parent.width
                    height: 100
                    color: "lightgray"
                    anchors.centerIn: parent

                    Button {
                        anchors.left: parent.left
                        anchors.leftMargin: 1277
                        anchors.verticalCenterOffset: 930  // Adds space to the left of the button
                        anchors.verticalCenter: parent.verticalCenter

                        contentItem: Text {
                            text: "OK"
                            color: "white"  // Set text color to white
                            font.bold: true
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }

                        background: Rectangle {
                            color: "#FF4500"
                            radius: 10
                            border.color: "#2bd51c"
                            border.width: 4
                        }

                    }
                }       Button {
                    text: "Reset all"
                    anchors.left: parent.left
                    anchors.leftMargin: 1327
                    anchors.verticalCenterOffset: 930  // Adds space to the left of the button
                    anchors.verticalCenter: parent.verticalCenter

                    // Customize text color by setting contentItem
                    contentItem: Text {
                        text: "Reset all"
                        color: "white"  // Set text color
                        font.bold: true
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    background: Rectangle {
                        color: "#0f0f0f"
                        radius: 10
                        border.color: "#FF4500"
                        border.width: 3
                    }
                    }
                }
            }


        Rectangle {
            id: rectangle
            x: 405
            y: 0
            width: 2
            height: 1000

            color: "#000000"
        }

        Rectangle {
            id: rectangle5
            x: 407
            y: 943
            width: 1515
            height: 2
            color: "#000000"
        }

        Rectangle {
            id: rectangle6
            x: 407
            y: 905
            width: 1515
            height: 2
            color: "#000000"
        }

        Rectangle {
            id: rectangle1
            x: 408
            y: 40
            width: 1515
            height: 2
            color: "#000000"
        }
        Button {
            x: 1810
            y: 4
            width: 33 // Set width for the button
            height: 30
            icon.source: "images/preview.png" // Path to play Button
            background: Rectangle {
                        color: "white"  // Button background color
                        radius: 3       // Rounded corners
                    }
            icon.color: "#5b5b5b" // Set icon color to white
            icon.width: 30
            icon.height: 35
        }
        Button {
            x: 500
            y: 0
            width: 54 // Set width for the button
            height: 38
            icon.source: "images/share (2).png" // Path to play Button
            background: Rectangle {
                        color: "#1f1f1f"  // Button background color
                        radius: 3       // Rounded corners
            }
            icon.color: "#5b5b5b" // Set icon color to white
            icon.width: 30
            icon.height: 35
        }
        Button {
            x: 466
            y: 2
            width: 49 // Set width for the button
            height: 34
            font.bold: rectangle6.border.pixelAligned
            icon.source: "images/reply.png" // Path to play Button
            background: Rectangle {
                        color: "#1f1f1f"  // Button background color
                        radius: 3       // Rounded corners
            }
            icon.color: "#5b5b5b" // Set icon color to white
            icon.width: 905
            icon.height: 95
        }


        Button {
            x: 1810
            y: 4
            width: 33 // Set width for the button
            height: 30
            icon.source: "images/preview.png" // Path to play Button
            background: Rectangle {
                        color: "#1f1f1f"  // Button background color
                        radius: 3       // Rounded corners
                    }
            icon.color: "white" // Set icon color to white
            icon.width: 30
            icon.height: 35
    }
        Button {
                    x: 1850
                    y: 4
                    width: 33 // Set width for the button
                    height: 30
                    icon.source: "images/ab-testing.png" // Path to play Button
                    background: Rectangle {
                                color: "#1f1f1f"  // Button background color
                                radius: 3       // Rounded corners
                    }
                    icon.color: "white" // Set icon color to white
                    icon.width: 30
                    icon.height: 35
        }


    }
