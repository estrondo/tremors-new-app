import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:tremors/auth/models.dart';
import 'package:tremors/errors.dart';

FutureOr<String> loginWithGoogle(AuthProvider provider) async {
  final googleSignIn = GoogleSignIn(
    scopes: [
      "email",
      "openid",
      "profile",
    ],
  );

  late final GoogleSignInAccount? account;

  try {
    account = await googleSignIn.signIn();
  } on Exception catch (cause) {
    throw SecurityException("Unable to get the account!", cause);
  }

  if (account != null) {
    late final GoogleSignInAuthentication authentication;

    try {
      authentication = await account.authentication;
    } on Exception catch (cause) {
      throw SecurityException("Unable to authenticate!", cause);
    }

    if (authentication.idToken != null) {
      return authentication.idToken!;
    } else {
      throw SecurityException("No IdToken!");
    }
  } else {
    throw SecurityException("No account!");
  }
}
