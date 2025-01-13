#include "M1import.h"
#include<QFileDialog>
#include<QLabel>
#include<QString>

QString MediaImporter::openFileExplorer()
{
    QString selectedFile= QFileDialog::getOpenFileName(

    nullptr,
    "Selected Media File",
    QDir::homePath(),
    "Media Files(*.mp4 *.mp3 *.mov *.jpg *.png *.webp)"
  );
    return selectedFile;

}
