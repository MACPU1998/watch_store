import 'package:flutter/material.dart';
import 'package:store_watch/components/theme.dart';
import 'package:store_watch/route/names.dart';
import 'package:store_watch/route/routes.dart';
import 'package:store_watch/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watch Store',
      theme: lightTheme(),
      initialRoute: ScreenNames.root,
      routes: routes,
    );
  }
}
