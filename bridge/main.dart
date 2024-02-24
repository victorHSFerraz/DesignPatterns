import 'src/devices/device.dart';
import 'src/devices/radio.dart';
import 'src/devices/tv.dart';
import 'src/remotes/advanced_remote.dart';
import 'src/remotes/basic_remote.dart';

void main() {
  print('-------- Bridge Pattern --------');
  testDevice(Tv());
  testDevice(Radio());
}

void testDevice(Device device) {
  print('Tests with basic remote.');
  BasicRemote basicRemote = BasicRemote(device);
  basicRemote.power();
  device.printStatus();

  print('Tests with advanced remote.');
  AdvancedRemote advancedRemote = AdvancedRemote(device);
  advancedRemote.power();
  advancedRemote.mute();
  device.printStatus();
}
