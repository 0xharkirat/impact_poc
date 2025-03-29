import 'package:flutter/widgets.dart';
import 'package:impact_poc/src/models/menu_item.dart';



class BinItem extends MenuItem {
  final Color iconColor;

  const BinItem({
    required super.title,
    required IconData super.icon,
    required this.iconColor,
    super.route,
  });
}
