import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ashish Jain"),
            accountEmail: Text("ashish.jn.in@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("ashish.jn.in@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
