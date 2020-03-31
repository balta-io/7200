import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // final controller = AuthController();

  @override
  initState() {
    super.initState();
    // controller.authenticate().then((data) {
    //   print(data);
    // }).catchError((error) {
    //   print(error);
    // }).whenComplete(() {
    //   print("Completou");
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
            ),
            FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.fingerprint,
                size: 72,
                color: Theme.of(context).accentColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Meus Contatos",
              style: TextStyle(
                fontSize: 24,
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
