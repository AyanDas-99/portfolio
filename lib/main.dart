import 'package:flutter/material.dart';
import 'package:portfolio/file/projects.dart';
import 'package:portfolio/project_page.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeConstants.lightTheme,
      darkTheme: ThemeConstants.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<ThemeModeProvider>().themeMode,
      // themeMode: ThemeMode.dark,
      // home: ProjectPage(Projects.projects.first),
      home: const HomePage(),
    );
  }
}
