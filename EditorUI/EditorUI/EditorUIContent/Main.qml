import QtQuick
import QtQuick.Controls
import QtMultimedia
import QtQuick.Dialogs

Item {
    width: 1024
    height: 768

    // Load the UI file created above
    Loader {
        id: uiLoader
        source: "YourUIFile.ui.qml" // Replace with the actual name of your .ui.qml file
    }

    // FileDialog for selecting video files
    FileDialog {
        id: fileDialog
        title: "Select a Video File"
        nameFilters: ["Video files (*.mp4 *.avi *.mkv *.mov)"]
        onAccepted: {
            mediaPlayer.source = fileDialog.fileUrl // Set selected video as MediaPlayer source
        }
    }

    // MediaPlayer to control video playback
    MediaPlayer {
        id: mediaPlayer
        videoOutput: uiLoader.item.previewPane.videoOutput // Link with VideoOutput in UI file
    }

    // Connect the button click event to the FileDialog
    Component.onCompleted: {
        uiLoader.item.openFileButton.onClicked.connect(function() {
            fileDialog.open();
        });
    }
}
