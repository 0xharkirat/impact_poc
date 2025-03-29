import 'package:flutter/material.dart';

class ListViewWidget<T> extends StatelessWidget {
  const ListViewWidget({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.separatorBuilder,
  });

  final List<T> items;
  final Widget Function(BuildContext, T) itemBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return itemBuilder(context, items[index]);
      },
      separatorBuilder: separatorBuilder ??
          (context, index) => const Divider(height: 0),
    );
  }
}
