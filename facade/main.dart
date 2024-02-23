import 'src/media_library/file.dart';
import 'src/video_conversion_facade.dart';

void main() {
  print('-------- Facade Pattern --------');
  VideoConversionFacade converter = VideoConversionFacade();
  String fileName = 'funny-cats-video.mp4';
  File file = converter.convertVideo(fileName, 'ogg');
  print('-------- ${file.name} --------');
}
