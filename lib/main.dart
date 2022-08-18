import 'package:cloudy/src/core/themes/light/theme_core.dart/default_theme.dart';
import 'package:cloudy/src/features/Intro/presentation/views/intro_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const CupertinoScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Cloudy',
      theme: Themes.theme,
      localizationsDelegates: const <LocalizationsDelegate>[
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      home: const IntroPage(),
    );
  }
}
