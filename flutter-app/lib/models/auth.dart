class AuthorisedUser {
  final List<int> accessToken;
  final String email;
  final String name;

  AuthorisedUser({
    required this.accessToken,
    required this.email,
    required this.name,
  });
}
