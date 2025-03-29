import 'package:impact_poc/src/core/app_router.dart';
import 'package:impact_poc/src/models/menu_item.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final List<MenuItem> mainMenuItems = [
  MenuItem(title: 'Calendar', icon: LucideIcons.calendar, ),
  MenuItem(title: 'News and Alerts', icon: LucideIcons.megaphone),
  MenuItem(title: 'Bin Info', icon: LucideIcons.trash, route: AppRoutes.binInfo.name),
  MenuItem(title: 'Food Waste Recycling', icon: LucideIcons.apple, route: AppRoutes.foodWasteRecycling.name),
  MenuItem(title: 'Facilities', icon: LucideIcons.landmark, route: AppRoutes.facilities.name),
  MenuItem(title: 'Near Me', icon: LucideIcons.mapPin),
  MenuItem(title: 'A-Z', icon: LucideIcons.search),
  MenuItem(title: 'More Info', icon: LucideIcons.info, route: AppRoutes.moreInfo.name),
];
