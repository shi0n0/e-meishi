import 'package:isar/isar.dart';

part 'meishi.g.dart';

@collection
class MyMeishiHistory {
  Id id = Isar.autoIncrement;
  final meishiId = 1;
  final version = Isar.autoIncrement;
  late String imagePath;
}
