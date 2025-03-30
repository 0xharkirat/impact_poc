import 'package:flutter/material.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/drawer_widget.dart';
import 'package:impact_poc/src/views/widgets/home_grid_widget.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Menu",
      body: const HomeGridWidget(),
      showDrawer: true,
    );
  }
}
