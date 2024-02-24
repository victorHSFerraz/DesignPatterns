abstract class Device {
  bool isEnabled();
  void enable();
  void disable();

  int getVolume();
  void setVolume(int percent);

  int getChannel();
  void setChannel(int channel);

  void printStatus();
}
