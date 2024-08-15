import 'package:isar/isar.dart';

part 'my_meishi_history.g.dart';

@collection
class MyMeishiHistory {
  Id id = Isar.autoIncrement;
  final meishiId = 1;
  final version = Isar.autoIncrement;
  late String imagePath;
}
