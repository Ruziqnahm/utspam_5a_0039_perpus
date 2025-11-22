class UserModel {
  final int? id;
  final String fullName;
  final String nik;
  final String email;
  final String address;
  final String phoneNumber;
  final String username;
  final String password;

  UserModel({
    this.id,
    required this.fullName,
    required this.nik,
    required this.email,
    required this.address,
    required this.phoneNumber,
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fullName': fullName,
      'nik': nik,
      'email': email,
      'address': address,
      'phoneNumber': phoneNumber,
      'username': username,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      fullName: map['fullName'],
      nik: map['nik'],
      email: map['email'],
      address: map['address'],
      phoneNumber: map['phoneNumber'],
      username: map['username'],
      password: map['password'],
    );
  }
}
