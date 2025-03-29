import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/bin_item.dart';
import 'package:impact_poc/src/models/data/bin_items.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/list_view_widget.dart';


class BinInfoScreen extends StatelessWidget {
  const BinInfoScreen({super.key, required this.showDrawer});
  final bool showDrawer;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: "Bin Info",
      showDrawer: showDrawer,
      body: ListViewWidget<BinItem>(
        items: binItems,
        itemBuilder: (context, item) {
          return ListTile(
            leading: Icon(item.icon, color: item.iconColor, size: 24),
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
