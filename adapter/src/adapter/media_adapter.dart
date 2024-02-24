import '../adaptee/advanced_music_player.dart';
import '../interface/music_player.dart';

class MediaAdapter implements MusicPlayer {
  late AdvancedMusicPlayer advancedMusicPlayer;

  MediaAdapter(String audioType) {
    if (audioType.toLowerCase() == 'vlc') {
      advancedMusicPlayer = AdvancedMusicPlayer();
    } else if (audioType.toLowerCase() == 'mp4') {
      advancedMusicPlayer = AdvancedMusicPlayer();
    }
  }

  @override
  void play(String audioType, String fileName) {
    if (audioType.toLowerCase() == 'vlc') {
      advancedMusicPlayer.playVlc(fileName);
    } else if (audioType.toLowerCase() == 'mp4') {
      advancedMusicPlayer.playMp4(fileName);
    }
  }
}
