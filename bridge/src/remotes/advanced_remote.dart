import '../devices/device.dart';
import 'basic_remote.dart';

class AdvancedRemote extends BasicRemote {
  AdvancedRemote(Device device) : super(device);

  void mute() {
    print('Remote: mute');
    device.setVolume(0);
  }
}
