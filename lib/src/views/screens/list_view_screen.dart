import 'package:flutter/material.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/list_tile_widget.dart';

class ListViewScreen<T> extends StatelessWidget {
  const ListViewScreen({
    super.key,
    required this.title,
    required this.showDrawer,
    required this.items,
  });

  final String title;
  final bool showDrawer;
  final List<T> items;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: title,
      showDrawer: showDrawer,
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTileWidget<T>(item: items[index]);
        },
        separatorBuilder: (context, index) => const Divider(height: 0),
      ),
    );
  }
}
