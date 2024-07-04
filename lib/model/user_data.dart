class User {
  String email;
  String password;
  String role;

  User({
    required this.email,
    required this.password,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'role': role,
    };
  }
}

class Company extends User {
  String name;
  String license;
  String address;

  Company({
    required String email,
    required String password,
    required this.name,
    required this.license,
    required this.address,
  }) : super(email: email, password: password, role: 'Company');

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json.addAll({
      'name': name,
      'license': license,
      'address': address,
    });
    return json;
  }
}

class Individual extends User {
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  Individual({
    required String email,
    required String password,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.address,
  }) : super(email: email, password: password, role: 'Individual');

  @override
  Map<String, dynamic> toJson() {
    final json = super.toJson();
    json.addAll({
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'address': address,
    });
    return json;
  }
}




