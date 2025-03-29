
import 'package:go_router/go_router.dart';
import 'package:impact_poc/src/models/bin_item.dart';
import 'package:impact_poc/src/models/data/bin_items.dart';
import 'package:impact_poc/src/models/data/facilities_items.dart';
import 'package:impact_poc/src/models/data/fwr_items.dart';
import 'package:impact_poc/src/models/data/more_info_items.dart';
import 'package:impact_poc/src/models/menu_item.dart';

import 'package:impact_poc/src/views/screens/home_screen.dart';
import 'package:impact_poc/src/views/screens/list_view_screen.dart';


enum AppRoutes {
  home,
  binInfo,
  foodWasteRecycling,
  moreInfo,
  facilities,
  nearMe,
  aToZ,
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
        
        return ListViewScreen<BinItem>(
          title: "Bin Info",
          showDrawer: fromDrawer,
          items: binItems,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.foodWasteRecycling.path,
      name: AppRoutes.foodWasteRecycling.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;

        return ListViewScreen<MenuItem>(
          title: "Food Waste Recycling",
          items: fwrItems,
          showDrawer: fromDrawer,
        );
      },
    ),

    // create two routes for the moreInfo and facilities screens
    GoRoute(
      path: AppRoutes.moreInfo.path,
      name: AppRoutes.moreInfo.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;

        return ListViewScreen<MenuItem>(
          title: 'More Info',
          showDrawer: fromDrawer,
          items: moreInfoMenuItems,
        );
      },
    ),

    GoRoute(
      path: AppRoutes.facilities.path,
      name: AppRoutes.facilities.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;

        return ListViewScreen(
          title: "Facilities",
          showDrawer: fromDrawer,
          items: facilitiesMenuItems,
        );
      },
    ),
  ],
);

// create an extension to add the / to the enum route name
extension AppRoutesExtension on AppRoutes {
  String get path => '/$name';
}
