import 'dart:html';

class FileDownloadException implements Exception{
  @override
  String toString() {
    return 'File download has failed';
  }
}

class FileDownload{
  void downloadItem(FileItem fileItem){
    if(fileItem == null) throw FileDownloadException();
  }
}

class FileItem{
  final String name;
  final String filePath;

  FileItem(this.name, this.filePath);

}