import 'package:go_router/go_router.dart';
import 'package:impact_poc/src/models/bin_item.dart';
import 'package:impact_poc/src/models/data/bin_items.dart';
import 'package:impact_poc/src/models/data/facilities_items.dart';
import 'package:impact_poc/src/models/data/fwr_items.dart';
import 'package:impact_poc/src/models/data/more_info_items.dart';
import 'package:impact_poc/src/models/menu_item.dart';
import 'package:impact_poc/src/views/screens/calendar_screen.dart';

import 'package:impact_poc/src/views/screens/home_screen.dart';
import 'package:impact_poc/src/views/screens/list_view_screen.dart';
import 'package:impact_poc/src/views/screens/news_alerts_screen.dart';

enum AppRoutes {
  home,
  calendar,
  newsAlerts,
  binInfo,
  foodWasteRecycling,
  moreInfo,
  facilities,
  nearMe,
  aToZ,
  settings,
}

final appRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    /// The main route of the app, which is the home screen.
    GoRoute(
      path: '/',
      name: AppRoutes.home.name,
      builder: (context, state) => const HomeScreen(),
    ),

    /// The Calendar route, which shows the list of calendar items.
    GoRoute(
      path: AppRoutes.calendar.path,
      name: AppRoutes.calendar.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;
        return CalendarScreen(showDrawer: fromDrawer);
      },
    ),

    /// The Bin Info route, which shows the list of bin items.
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

    /// The Food Waste Recycling route, which shows the list of food waste recycling items.
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

    /// The more info route, which shows the list of more info items.
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

    /// The facilities route, which shows the list of facilities items.
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

    /// The News and Alerts route, which shows the list of news and alerts items.
    GoRoute(
      path: AppRoutes.newsAlerts.path,
      name: AppRoutes.newsAlerts.name,
      builder: (context, state) {
        final fromDrawer = state.extra as bool? ?? false;

        return NewsAlertsScreen(showDrawer: fromDrawer);
      },
    ),
  ],
);

// create an extension to add the / to the enum route name
extension AppRoutesExtension on AppRoutes {
  String get path => '/$name';
}
