import 'package:isar/isar.dart';

part 'meishi.g.dart';

@collection
class Meishi {
  Id id = Isar.autoIncrement;

  late String imageName;
  late String userName;
  late String gender;
  late String age;
  late String affiliation;
  late String phoneNumber;
  late String memo;
  late DateTime addedTime;
}
