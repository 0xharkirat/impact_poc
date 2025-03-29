import 'package:flutter/material.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class BinInfoScreen extends StatelessWidget {
  const BinInfoScreen({super.key, required this.showDrawer});
  final bool showDrawer;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Bin Info",
      showDrawer: showDrawer,
      body: Center(
        child: Text(
          'Bin Information Screen',
          style: ShadTheme.of(context).textTheme.h1,
        ),
      ),
    );
  }
}
