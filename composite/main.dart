import 'src/composite/directory.dart';
import 'src/leaf/file.dart';

void main() {
  print('-------- Composite Pattern --------');
  var file1 = File('File1.txt');
  var file2 = File('File2.txt');
  var file3 = File('File3.txt');

  var directory1 = Directory('Directory1');
  var directory2 = Directory('Directory2');

  directory1.add(file1);
  directory2.add(file2);
  directory2.add(file3);

  directory1.add(directory2);

  directory1.printName();
}
