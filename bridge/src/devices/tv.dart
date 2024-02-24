import 'device.dart';

class Tv implements Device {
  bool _on = false;
  int _volume = 30;
  int _channel = 1;

  @override
  bool isEnabled() {
    return _on;
  }

  @override
  void enable() {
    this._on = true;
  }

  @override
  void disable() {
    this._on = false;
  }

  @override
  int getVolume() {
    return _volume;
  }

  @override
  void setVolume(int percent) {
    if (percent > 100) {
      this._volume = 100;
    } else if (percent < 0) {
      this._volume = 0;
    } else {
      this._volume = percent;
    }
  }

  @override
  int getChannel() {
    return _channel;
  }

  @override
  void setChannel(int channel) {
    this._channel = channel;
  }

  @override
  void printStatus() {
    print('-----------------------');
    print('| I\'m TV.');
    print('| I\'m ' + (isEnabled() ? 'enabled' : 'disabled'));
    print('| Current volume is ' + getVolume().toString() + '%');
    print('| Current channel is ' + getChannel().toString());
    print('-----------------------\n');
  }
}
