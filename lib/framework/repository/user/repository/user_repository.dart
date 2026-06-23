import 'package:base_demo_ob/framework/provider/api_end_points.dart';
import 'package:base_demo_ob/framework/provider/api_result.dart';
import 'package:base_demo_ob/framework/provider/network/dio_client.dart';
import 'package:base_demo_ob/framework/provider/network_exceptions.dart';
import 'package:base_demo_ob/framework/repository/user/model/user_model.dart';

class UserRepository {

  final DioClient dioClient;

  UserRepository(this.dioClient);

  Future<ApiResult<List<UserModel>>>
  getUsers() async {

    try {

      final response =
      await dioClient.getResult(
          ApiEndPoints.users);

      final data =
      (response.data as List)
          .map((e)=>
          UserModel(
            name: e["name"],
          ))
          .toList();

      return ApiResult.success(
        data: data,
      );

    } catch(e){

      return ApiResult.failure(
        error:
        NetworkExceptions
            .getDioException(e),
      );
    }
  }
}