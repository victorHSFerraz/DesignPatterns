class VideoFile {
  final String _name;
  late final String _codecType;

  VideoFile({required String name}) : _name = name {
    _codecType = _name.split('.').last;
  }

  String get codecType => _codecType;

  String get name => _name;
}
