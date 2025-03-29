import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/data/facilities_items.dart';
import 'package:impact_poc/src/models/menu_item.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/list_view_widget.dart';


class FacilitiesScreen extends StatelessWidget {
  const FacilitiesScreen({super.key, required this.showDrawer});
  final bool showDrawer;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Facilities",
      showDrawer: showDrawer,
      body: ListViewWidget<MenuItem>(
        items: facilitiesMenuItems,
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
