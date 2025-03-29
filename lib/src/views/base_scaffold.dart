import 'package:flutter/material.dart';
import 'package:impact_poc/src/views/widgets/drawer_widget.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showDrawer;

  const BaseScaffold({
    super.key,
    required this.title,
    required this.body,
    this.showDrawer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ShadTheme.of(context).colorScheme.primaryForeground,
        ),
        title: Text(title),
        // shows drawer OR back automatically
      ),
      drawer: showDrawer ? const DrawerWidget() : null,
      body: body,
    );
  }
}
