class SignUp {
  final String fullName;
  final String email;
  final dynamic password;

  SignUp({
    required this.fullName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'password': password,
    };
  }
}
