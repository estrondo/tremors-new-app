import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:tremors/auth/auth_service.dart';
import 'package:tremors/login_page.dart';

import 'async.dart';
import 'extensions.dart';
import 'login_page_test.mocks.dart';

@GenerateMocks([AuthService, GoRouter])
void main() {
  provideDummy<AuthState>(AuthService.notLoggedState);
  testWidgets(
    "When the user isn't logged the LoginPage should offer login options.",
    (tester) async {
      final authService = MockAuthService();

      when(authService.state).thenReturn(AuthService.notLoggedState);

      await tester.pumpWidgetWithApp(ChangeNotifierProvider<AuthService>.value(
        value: authService,
        child: const LoginPage(),
      ));

      for (final provider in AuthProvider.values) {
        expect(find.text("Login with ${provider.title}"), findsOne);
      }
    },
  );

  testWidgets(
    "When the logging process has failed the LoginPage should display an error message.",
    (tester) async {
      final authService = MockAuthService();

      const expectedErrorMessage = "My friend!";

      when(authService.state).thenReturn(
        Failed(message: expectedErrorMessage, exception: Exception("@@@")),
      );

      await tester.pumpWidgetWithApp(ChangeNotifierProvider<AuthService>.value(
        value: authService,
        child: const LoginPage(),
      ));

      expect(find.text(expectedErrorMessage), findsOne);
    },
  );

  testWidgets(
    "When the user is logged the LoginPage should redirect them to the main page.",
    (tester) async {
      final service = MockAuthService();
      final goRouter = MockGoRouter();

      when(service.state).thenReturn(
        Logged(id: "id", email: "a@b.c", name: "d"),
      );

      runAsync(
        () async {
          await tester.pumpWidgetWithApp(MultiProvider(
            providers: [
              ChangeNotifierProvider<AuthService>.value(
                value: service,
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
