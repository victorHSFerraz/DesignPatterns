import '../adapter/media_adapter.dart';
import '../interface/music_player.dart';

class AudioPlayer implements MusicPlayer {
  late MediaAdapter mediaAdapter;

  @override
  void play(String audioType, String fileName) {
    if (audioType.toLowerCase() == 'mp3') {
      print('Playing mp3 file. Name: $fileName');
    } else if (audioType.toLowerCase() == 'vlc' || audioType.toLowerCase() == 'mp4') {
      mediaAdapter = MediaAdapter(audioType);
      mediaAdapter.play(audioType, fileName);
    } else {
      print('Invalid media. $audioType format not supported');
    }
  }
}
