import 'file.dart';
import 'video_file.dart';

class AudioMixer {
  File fix(VideoFile result) {
    print('AudioMixer: fixing audio...');
    return File('${result.name}');
  }
}
