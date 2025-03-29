import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: ShadTheme.of(context).colorScheme.primary,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: ShadTheme.of(context).colorScheme.primaryForeground,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              // Close the drawer and navigate to home
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Close the drawer and navigate to settings
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
