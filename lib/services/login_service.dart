import 'package:bulkify/constants.dart';
import 'package:bulkify/helper/api.dart';
import 'package:bulkify/models/user_model.dart';

class LoginService {
  Future<UserModel> loginUserService({
    required String email,
    required String password,
  }) async {
    try {
      Map<String, dynamic> data = await Api.post(
        body: {
          'email': email,
          'password': password,
        },
        url: '$baseUrl/api/v1/customers/login',
      );
      return UserModel.fromJson(data);
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }
  }
}
