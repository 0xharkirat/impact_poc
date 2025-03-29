import 'package:go_router/go_router.dart';
import 'package:impact_poc/src/views/screens/bin_info_screen.dart';
import 'package:impact_poc/src/views/screens/facilities_screen.dart';
import 'package:impact_poc/src/views/screens/food_waste_recycling.dart';

import 'package:impact_poc/src/views/screens/home_screen.dart';
import 'package:impact_poc/src/views/screens/more_info_screen.dart';

enum AppRoutes { home, binInfo, foodWasteRecycling, moreInfo , facilities, nearMe, aToZ }

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
    GoRoute(
      path: AppRoutes.foodWasteRecycling.path,
      name: AppRoutes.foodWasteRecycling.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;

        return FoodWasteRecyclingScreen(
          showDrawer: fromDrawer,
          // pass the fromDrawer value to the BinInfoScreen
          // to show the drawer or back button)
        );
      },
    ),

    // create two routes for the moreInfo and facilities screens
    GoRoute(path: AppRoutes.moreInfo.path,
      name: AppRoutes.moreInfo.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;

        return MoreInfoScreen(
          showDrawer: fromDrawer,
          // pass the fromDrawer value to the BinInfoScreen
          // to show the drawer or back button)
        );
      },
    ),

    GoRoute(path: AppRoutes.facilities.path,
      name: AppRoutes.facilities.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;

        return FacilitiesScreen(
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
