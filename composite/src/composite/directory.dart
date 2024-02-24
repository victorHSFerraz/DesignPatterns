import '../component/file_system_entity.dart';

class Directory implements FileSystemEntity {
  String name;
  List<FileSystemEntity> _children = [];

  Directory(this.name);

  void add(FileSystemEntity entity) {
    _children.add(entity);
  }

  void remove(FileSystemEntity entity) {
    _children.remove(entity);
  }

  @override
  void printName() {
    print('Directory: $name');
    _children.forEach((child) => child.printName());
  }
}
