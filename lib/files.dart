import 'package:path/path.dart';

const List<String> videoFormats = [
  '.mp4',
  '.mov',
  '.avi',
  '.wmv',
  '.3gp',
  '.3gpp',
  '.mkv',
  '.flv'
];
const List<String> imageFormats = [
  '.jpeg',
  '.png',
  '.jpg',
  '.gif',
  '.webp',
  '.tif',
  '.heic'
];
const http = 'http';

bool isLocalFilePath(String path) {
  Uri uri = Uri.parse(path);
  return !uri.scheme.contains(http);
}

bool isVideo(String path) {
  for (final f in videoFormats) {
    if (path.contains(f)) return true;
  }
  return false;
  // return videoFormats.contains(extension(path).toLowerCase());
}

bool isImage(String path) =>
    imageFormats.contains(extension(path).toLowerCase());
