import 'package:flutter/material.dart';
import 'styles.dart';
import 'views/splash.view.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: SplashView(),
    );
  }
}
