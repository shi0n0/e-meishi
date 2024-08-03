import 'package:isar/isar.dart';

part 'other_meishi.g.dart';

@collection
class OtherMeishi {
  Id id = Isar.autoIncrement;

  late String imagePath;
  late DateTime addedTime;
}
