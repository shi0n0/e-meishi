import 'package:isar/isar.dart';

part 'meishi.g.dart';

@collection
class Meishi {
  Id id = Isar.autoIncrement;

  late String imageName;
  late DateTime addedTime;
}
