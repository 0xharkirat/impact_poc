
import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/bin_item.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

final binItems = [
  BinItem(
    title: 'General waste bin',
    icon: LucideIcons.trash2,
    iconColor: Colors.red,
  ),
  BinItem(
    title: 'Recycling bin',
    icon: LucideIcons.trash2,
    iconColor: Colors.yellow.shade700,
  ),
  BinItem(
    title: 'Green waste recycling bin',
    icon: LucideIcons.trash2,
    iconColor: Colors.green,
  ),
  BinItem(
    title: 'Kerbside large item collection',
    icon: LucideIcons.sofa,
    iconColor: Colors.lightBlue.shade400,
  ),
  BinItem(
    title: 'Resident bin options',
    icon: LucideIcons.trash,
    iconColor: Colors.indigo.shade800,
  ),
  BinItem(
    title: 'Report a bin problem',
    icon: LucideIcons.info,
    iconColor: Colors.blue,
  ),
];
