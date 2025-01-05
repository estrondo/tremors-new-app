class AuthorisedUser {
  final List<int> token;
  final String email;

  AuthorisedUser({
    required this.token,
    required this.email,
  });
}
