import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/data/more_info_items.dart';
import 'package:impact_poc/src/models/menu_item.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/list_view_widget.dart';


class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({super.key, required this.showDrawer});
  final bool showDrawer;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "More Info",
      showDrawer: showDrawer,
      body: ListViewWidget<MenuItem>(
        items: moreInfoMenuItems,
        itemBuilder: (context, item) {
          return ListTile(
            leading: Icon(item.icon, size: 24),
            title: Text(item.title, style: TextStyle(fontSize: 16)),
            onTap: () {
              // Handle tap action
            },
          );
        },
      ),
    );
  }
}
