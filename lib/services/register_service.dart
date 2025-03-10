import 'package:bulkify/constants.dart';
import 'package:bulkify/helper/api.dart';
import 'package:bulkify/models/user_model.dart';

class RegisterService {
  Future<UserModel> addUserService({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String gender,
    required String phoneNumber,
    required String nationalId,
    required String city,
    required String street,
    required String homeNumber,
    required CoordinatesModel coordinates,
  }) async {
    try {
      Map<String, dynamic> data = await Api.post(
        body: {
          'firstName': firstName,
          'lastName': lastName,
          'email': email,
          'password': password,
          'gender': gender,
          'phoneNumber': phoneNumber,
          'nationalId': nationalId,
          'city': city,
          'street': street,
          'homeNumber': homeNumber,
          'coordinates': [coordinates.longitude, coordinates.latitude],
        },
        url: '$baseUrl/api/v1/customers/register',
      );
      return UserModel.fromJson(data);
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }
  }
}
