import 'package:flutter/material.dart';

import 'message.dart';
import 'notification.dart';
import 'profile.dart';
import 'add.dart';
import 'navigation.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App name',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      navigatorKey: navigatorKey,
      home: const MyHomePage(title: 'App Name'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    Color pastelPurple = const Color.fromRGBO(204, 188, 254, 1.0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              // Logique de recherche
            },
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nothing for you :(',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {

              },
            ),
            IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                NavigationHelper.openMessageScreen(context);
              },
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: pastelPurple, width: 10),
                color: pastelPurple,
              ),
              child: IconButton(
                icon: const Icon(Icons.add_sharp),
                onPressed: () {
                  // Action du troisième bouton
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notification_important),
              onPressed: () {
                NavigationHelper.openNotificationScreen(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                NavigationHelper.openProfileScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
