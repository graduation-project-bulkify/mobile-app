class RegisterModel {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String gender;
  final String phoneNumber;
  final String nationalId;
  final String city;
  final String street;
  final String homeNumber;
  final CoordinatesModel coordinates;

  RegisterModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.gender,
    required this.phoneNumber,
    required this.nationalId,
    required this.city,
    required this.street,
    required this.homeNumber,
    required this.coordinates,
  });

  factory RegisterModel.fromJson(jsonData) {
    return RegisterModel(
      id: jsonData['id'],
      firstName: jsonData['firstName'],
      lastName: jsonData['lastName'],
      email: jsonData['email'],
      password: jsonData['password'],
      gender: jsonData['gender'],
      phoneNumber: jsonData['phoneNumber'],
      nationalId: jsonData['nationalId'],
      city: jsonData['city'],
      street: jsonData['street'],
      homeNumber: jsonData['homeNumber'],
      coordinates: CoordinatesModel.fromJson(jsonData['coordinates']),
    );
  }
}

class CoordinatesModel {
  final double longitude;
  final double latitude;

  CoordinatesModel({required this.longitude, required this.latitude});

  factory CoordinatesModel.fromJson(List<dynamic> jsonData) {
    return CoordinatesModel(
      longitude: jsonData[0].toDouble(),
      latitude: jsonData[1].toDouble(),
    );
  }
}
