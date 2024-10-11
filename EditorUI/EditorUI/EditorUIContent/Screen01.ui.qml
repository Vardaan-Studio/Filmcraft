import QtQuick
import QtQuick.Controls
import QtMultimedia

Item {
    width: 1024
    height: 768

    // Button for selecting video file
    Button {
        id: openFileButton
        text: "Import Video"
        anchors.top: parent.top
        anchors.left: parent.left
    }

    // Pane for video preview window
    Pane {
        id: previewPane
        anchors.top: parent.top
        anchors.right: parent.right
        width: 480
        height: 270

        // VideoOutput for the preview window
        VideoOutput {
            id: videoOutput
            anchors.fill: parent
        }
    }

    Pane {
        id: pane
        x: 0
        y: 270
        width: 1024
        height: 19
    }
}
