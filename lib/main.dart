import 'package:flutter/material.dart';
import 'package:impact_poc/src/core/app_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.router(
      title: 'Impact POC',
      routerConfig: appRouter,
      theme: ShadThemeData(
        colorScheme: ShadBlueColorScheme.light(),
        brightness: Brightness.light,
      ),
    );
  }
}
