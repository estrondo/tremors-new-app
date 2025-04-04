import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tremors/centre.dart';
import 'package:tremors/firebase_options.dart';
import 'package:tremors/grpc.dart';
import 'package:tremors/l10n.dart';
import 'package:tremors/logger.dart';
import 'package:tremors/managers/moment.dart';
import 'package:tremors/managers/search.dart';
import 'package:tremors/managers/security_manager.dart';
import 'package:tremors/map/map_manager.dart';
import 'package:tremors/models/auth.dart';
import 'package:tremors/navigation.dart';
import 'package:tremors/ref.dart';
import 'package:tremors/security.dart';
import 'package:tremors/theme.dart';
import 'package:tremors/tremors_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final tremorsTheme = createTheme();

  final localKey = UniqueKey();
  final rootKey = GlobalKey<NavigatorState>();
  final shellKey = GlobalKey<NavigatorState>();

  final app = MaterialApp.router(
    theme: (await tremorsTheme).themeData,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    debugShowCheckedModeBanner: false,
    routerConfig: GoRouter(
      navigatorKey: rootKey,
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, child) => TremorsPage(child: child),
          redirect: (context, goRouterState) {
            if (context.read<SecurityManager>().isLogged) {
              return null;
            } else {
              logger.i("User is not logged, redirecting them to login page.");
              return "/login";
            }
          },
          branches: [
            StatefulShellBranch(
              routes: [GoRoute(path: '/', builder: mapPage)],
            ),
            StatefulShellBranch(
              routes: [GoRoute(path: '/layers', builder: layersPage)],
            ),
            StatefulShellBranch(
              routes: [GoRoute(path: '/search', builder: searchPage)],
            ),
            StatefulShellBranch(
              routes: [GoRoute(path: '/settings', builder: settingsPage)],
            ),
          ],
        ),
        GoRoute(path: '/login', builder: loginPage),
      ],
    ),
  );

  final authorisedUserRef = Ref<AuthorisedUser>();

  final grpcModule = await GrpcModule.create(authorisedUserRef);
  final securityModule = await SecurityModule.create();
  final centreModule = CentreModule(
    grpcModule: grpcModule,
    securityModule: securityModule,
  );


  runApp(Provider.value(
    value: tremorsTheme,
    child: MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => MapManager.create(
            ctx,
            centreModule.objectService,
          ),
        ),
        ChangeNotifierProvider(create: SearchManager.create),
        ChangeNotifierProvider(create: Moment.create),
        ChangeNotifierProvider(
          create: (ctx) => SecurityManager.create(
            ctx,
            grpcModule,
            securityModule.securityStorage,
            authorisedUserRef,
          ),
        ),
      ],
      child: SafeArea(child: app),
    ),
  ));
}
