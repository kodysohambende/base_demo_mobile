import 'package:objectbox/objectbox.dart';

@Entity()
class UserModel {
  @Id()
  int id;
  String? name;

  UserModel({this.id = 0, this.name});

}