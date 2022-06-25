import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/screens/login_screen.dart';
import 'package:flutterapp/screens/register_screen.dart';
import 'package:flutterapp/screens/transaction_sreen.dart';
import 'package:flutterapp/screens/visitor_screen.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Admin'),
            accountEmail: Text('admin@admin.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.analytics),
            title: Text('Visitor'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => VisitorSreen(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text('Transaction'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => TransactionScreen(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.pushAndRemoveUntil<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => RegisterScreen(),
                ),
                (route) =>
                    false, //if you want to disable back feature set to false
              );
            },
          ),
        ],
      ),
    );
  }
}
