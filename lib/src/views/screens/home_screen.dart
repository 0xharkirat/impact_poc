

import 'package:flutter/material.dart';
import 'package:impact_poc/src/views/widgets/drawer_widget.dart';
import 'package:impact_poc/src/views/widgets/home_grid_widget.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ShadTheme.of(context).colorScheme.primaryForeground,
        ),
        title: Text(
          'Menu',
          style: TextStyle(
            color: ShadTheme.of(context).colorScheme.primaryForeground,
          ),
        ),
        backgroundColor: ShadTheme.of(context).colorScheme.primary,
      ),
      drawer: DrawerWidget(),
      body: HomeGridWidget(),
    );
  }
}
