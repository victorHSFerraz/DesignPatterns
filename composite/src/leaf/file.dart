import '../component/file_system_entity.dart';

class File implements FileSystemEntity {
  String name;

  File(this.name);

  @override
  void printName() {
    print('File: $name');
  }
}
