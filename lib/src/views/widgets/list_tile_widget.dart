import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/bin_item.dart';
import 'package:impact_poc/src/models/menu_item.dart';

class ListTileWidget<T> extends StatelessWidget {
  const ListTileWidget({super.key, required this.item});
  final T item;

  @override
  Widget build(BuildContext context) {
    if (item is BinItem) {
      final binItem = item as BinItem;
      return ListTile(
        leading: Icon(binItem.icon, color: binItem.iconColor, size: 24),
        title: Text(binItem.title),
        onTap: () {
          // Handle tap for BinItem
        },
      );
    }

    final menuItem = item as MenuItem;
    return ListTile(
      leading: Icon(menuItem.icon, size: 24),
      title: Text(menuItem.title),
      onTap: () {
        // Handle tap for MenuItem
      },
    );

    // fallback widget if type doesn't match
  }
}
