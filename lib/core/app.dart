import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_app/config/routes/app_route.dart';
import 'package:second_app/config/theme/theme_dark.dart';
import 'package:second_app/config/theme/theme_light.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
   @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screen',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: AppRoute.splashRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}

