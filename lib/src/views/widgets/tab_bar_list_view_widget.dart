import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/menu_item.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class TabBarListViewWidget extends StatelessWidget {
  const TabBarListViewWidget({super.key, required this.items, required this.iconData});

  final List<MenuItem> items;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final item = items[index ];
        return ListTile(
          tileColor: index % 2 == 0
              ? ShadTheme.of(context).colorScheme.secondary
              : ShadTheme.of(context).colorScheme.background,
          leading: Icon(
            iconData,
            color: ShadTheme.of(context).colorScheme.primary,
            size: 24,
          ),
          title: Text(item.title),
          onTap: () {
            
          },
          
        );
      },
     
    );
  }
}
