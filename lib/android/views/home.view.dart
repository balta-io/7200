import 'package:contacts/android/views/details.view.dart';
import 'package:contacts/android/views/editor-contact.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text("Meus Contatos"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      NetworkImage("https://balta.io/imgs/andrebaltieri.jpg"),
                ),
                borderRadius: BorderRadius.circular(64),
              ),
            ),
            title: Text("André Baltieri"),
            subtitle: Text("11 97222-7742"),
            trailing: FlatButton(
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsView(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: null,
              ),
            ),
          );
        },
      ),
    );
  }
}
