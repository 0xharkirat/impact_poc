import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/data/fwr_items.dart';
import 'package:impact_poc/src/models/menu_item.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/list_view_widget.dart';


class FoodWasteRecyclingScreen extends StatelessWidget {
  const FoodWasteRecyclingScreen({super.key, required this.showDrawer});
  final bool showDrawer;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Food Waste Recycling",
      showDrawer: showDrawer,
      body: ListViewWidget<MenuItem>(
        items: fwrItems,
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
