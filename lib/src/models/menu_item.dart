import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const MenuItem({required this.title, required this.icon, this.onTap});
}
