import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:tremors/auth/models.dart';
import 'package:tremors/login_page.dart';
import 'package:tremors/managers/security_manager.dart';
import 'package:tremors/models/auth.dart';
import 'package:tremors/security/models.dart';

import 'async.dart';
import 'en.dart';
import 'extensions.dart';
import 'login_page_test.mocks.dart';

@GenerateMocks([SecurityManager, GoRouter])
void main() {
  provideDummy<SecurityState>(ValuedSecurityState.notLogged());

  testWidgets(
    "When the user isn't logged the LoginPage should offer login options.",
    (tester) async {
      final securityManager = MockSecurityManager();

      when(securityManager.state).thenReturn(ValuedSecurityState.notLogged());

      await tester
          .pumpWidgetWithApp(ChangeNotifierProvider<SecurityManager>.value(
        value: securityManager,
        child: const LoginPage(),
      ));

      for (final provider in AuthProvider.values) {
        expect(
          find.text(testL10n.loginProviderLabel(provider.title)),
          findsOne,
        );
      }
    },
  );

  testWidgets(
    "When the logging process has failed the LoginPage should display an error message.",
    (tester) async {
      final securityManager = MockSecurityManager();
      final expectedErrorMessage =
          "Login with ${AuthProvider.google.title} has failed.";

      when(securityManager.state).thenReturn(
        FailedSecurityState(
          cause: Exception("@@@"),
          provider: AuthProvider.google,
        ),
      );

      await tester
          .pumpWidgetWithApp(ChangeNotifierProvider<SecurityManager>.value(
        value: securityManager,
        child: const LoginPage(),
      ));

      expect(find.text(expectedErrorMessage), findsOne);
    },
  );

  testWidgets(
    "When the user is logged the LoginPage should redirect them to the main page.",
    (tester) async {
      final securityManager = MockSecurityManager();
      final goRouter = MockGoRouter();

      when(securityManager.state).thenReturn(
        LoggedSecurityState(
          user: AuthorisedUser(
            token: [1, 2, 3],
            email: "a@b.c",
          ),
          provider: AuthProvider.vk,
        ),
      );

      runAsync(
        () async {
          await tester.pumpWidgetWithApp(MultiProvider(
            providers: [
              ChangeNotifierProvider<SecurityManager>.value(
                value: securityManager,
              ),
            ],
            child: InheritedGoRouter(
              goRouter: goRouter,
              child: const LoginPage(),
            ),
          ));
        },
      );

      verify(goRouter.go("/")).called(1);
    },
  );
}
