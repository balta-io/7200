import 'package:contacts/ios/views/splash.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:contacts/ios/views/home.view.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
