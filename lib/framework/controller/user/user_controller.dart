import 'package:base_demo_ob/framework/dependecy_injection/injection.dart';
import 'package:base_demo_ob/framework/provider/local_storage/object_box_helper.dart';
import 'package:base_demo_ob/framework/repository/user/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/legacy.dart';

final userProvider = ChangeNotifierProvider((ref) => getIt<UserController>());

class UserController extends ChangeNotifier{

  void addUser(String name){
    ObjectBoxHelper.userBox.put(UserModel(name: name));
  }


}