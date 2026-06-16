import 'package:base_demo_ob/framework/repository/user/model/user_model.dart';
import 'package:base_demo_ob/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart' as p show join;
import 'package:path_provider/path_provider.dart' as p;

class ObjectBoxHelper {
  late final Store store;
  // static late final Box<CategoriesModel> categoriesBox;
  static late final Box<UserModel> userBox;
  // static late final Box<ExpenseModel> expenseBox;

  ObjectBoxHelper._create(this.store) {
    // categoriesBox = Box<CategoriesModel>(store);
    userBox = Box<UserModel>(store);
    // expenseBox = Box<ExpenseModel>(store);
  }

  static Future<ObjectBoxHelper> create() async {
    var dirPath = await p.getApplicationDocumentsDirectory();
    var store = await openStore(directory: p.join(dirPath.path, 'userBox'));
    return ObjectBoxHelper._create(store);
  }
}
