import 'dart:html';

class FileDownloadException implements Exception{
  @override
  String toString() {
    return 'File download has failed';
  }
}

class FileDownload{
  void downloadItem(FileItem fileItem){
    if(fileItem == null) throw Exception();
  }
}

class FileItem{
  final String name;
  final File file;

  FileItem(this.name, this.file);

}