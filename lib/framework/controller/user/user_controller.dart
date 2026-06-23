import 'package:base_demo_ob/framework/dependecy_injection/injection.dart';
import 'package:base_demo_ob/framework/provider/local_storage/object_box_helper.dart';
import 'package:base_demo_ob/framework/repository/user/model/user_model.dart';
import 'package:base_demo_ob/framework/utils/session.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/legacy.dart';

final userProvider = ChangeNotifierProvider((ref) => getIt<UserController>());

class UserController extends ChangeNotifier {

  // final UserRepository repository;

  // UserController(this.repository);

  List<UserModel> users = [];

  void addUser(String name) {
    ObjectBoxHelper.userBox.put(UserModel(name: name));
    // loadOfflineUsers();
  }

  // Future<void> getUsers() async {
  //
  //   final result = await repository.getUsers();
  //
  //   result.when(
  //
  //     success: (data) {
  //       users = data;
  //       ObjectBoxHelper.userBox.removeAll();
  //       ObjectBoxHelper.userBox.putMany(data);
  //       notifyListeners();
  //     },
  //
  //     failure: (error) {
  //       loadOfflineUsers();
  //     },
  //   );
  // }

  void loadOfflineUsers() {
    users = ObjectBoxHelper.userBox.getAll();
    notifyListeners();
  }
}