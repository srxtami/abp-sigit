import 'package:flutter/material.dart';
import 'navBar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'SIGIT',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.people, size: 50),
              title: Text('Visitors'),
              subtitle: Text('1020 Peoples'),
            ),
            const ListTile(
              leading: Icon(Icons.money, size: 50),
              title: Text('Transactions'),
              subtitle: Text('1400'),
            ),
          ],
        ),
      ),
    );
  }
}
