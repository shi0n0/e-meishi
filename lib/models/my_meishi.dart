import 'package:isar/isar.dart';

part 'my_meishi.g.dart';

@collection
class MyMeishi {
  Id id = Isar.autoIncrement;

  late String imagePath;
}
