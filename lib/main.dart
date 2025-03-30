import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:impact_poc/src/core/app_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  runApp(
    DevicePreview(
      tools: [...DevicePreview.defaultTools],

      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.materialRouter(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      title: 'Impact POC',
      routerConfig: appRouter,
      materialThemeBuilder: (context, theme) {
        return theme.copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: ShadTheme.of(context).colorScheme.primary,
            foregroundColor:
                ShadTheme.of(context).colorScheme.primaryForeground,
          ),
        );
      },
      theme: ShadThemeData(
        colorScheme: ShadBlueColorScheme.light(),
        brightness: Brightness.light,
      ),
    );
  }
}
