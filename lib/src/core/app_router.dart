import 'package:go_router/go_router.dart';
import 'package:impact_poc/src/views/screens/bin_info_screen.dart';
import 'package:impact_poc/src/views/screens/home_screen.dart';

enum AppRoutes {
  home,
  binInfo,
}

final appRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
      
    ),
    GoRoute(
          path: AppRoutes.binInfo.path,
          name: AppRoutes.binInfo.name,
          builder: (context, state) {
            final fromDrawer = state.extra as bool? ?? false;

            return BinInfoScreen(
              showDrawer: fromDrawer,
              // pass the fromDrawer value to the BinInfoScreen
              // to show the drawer or back button)
            );
          },
        ),
  ],
);

// create an extension to add the / to the enum route name
extension AppRoutesExtension on AppRoutes {
  String get path => '/$name';
}