import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impact_poc/src/core/app_router.dart';
import 'package:impact_poc/src/models/data/main_menu_items.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = ShadTheme.of(context).colorScheme.primary;
    final iconColor = ShadTheme.of(context).colorScheme.primaryForeground;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: primaryColor),
            child: Text(
              'Menu',
              style: TextStyle(
                color: iconColor,
                fontSize: 24,
              ),
            ),
          ),
          ..._withDivider([
            ListTile(
              title: const Text('Main Menu'),
              leading: _circleIcon(LucideIcons.menu, primaryColor, iconColor),
              onTap: () {
                Navigator.pop(context);
                log('Tapped on Main Menu');
                context.goNamed(AppRoutes.home.name, extra: true);
              },
            ),
            ListTile(
              title: const Text('Change Address and Alerts'),
              leading: _circleIcon(LucideIcons.settings, primaryColor, iconColor),
              onTap: () => Navigator.pop(context),
            ),
            // Generate menu items with dividers
            ...mainMenuItems.map(
              (item) => ListTile(
                title: Text(item.title),
                leading: _circleIcon(item.icon, primaryColor, iconColor),
                onTap: () {
                  Navigator.pop(context);
                  log('Tapped on ${item.title}, route: ${item.route}');
                  if (item.route != null) context.goNamed(item.route!, extra: true);
                },
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _circleIcon(IconData? icon, Color bg, Color fg) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: bg,
      ),
      child: Icon(icon, size: 24, color: fg),
    );
  }

  /// Adds a Divider after every widget
  List<Widget> _withDivider(List<Widget> tiles) {
    return [
      for (int i = 0; i < tiles.length; i++) ...[
        tiles[i],
        const Divider(height: 0),
      ]
    ];
  }
}
