import 'package:flutter/material.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeModeProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ayan's Portfolio",
      theme: ThemeConstants.lightTheme,
      darkTheme: ThemeConstants.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<ThemeModeProvider>().themeMode,
      home: const HomePage(),
    );
  }
}


/*
To Add project
Add new project in the projects.dart file
*/
