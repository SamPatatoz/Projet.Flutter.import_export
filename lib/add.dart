import 'package:flutter/material.dart';

import 'main.dart';
import 'message.dart';
import 'profile.dart';
import 'notification.dart';
import 'navigation.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color pastelPurple = const Color.fromRGBO(204, 188, 254, 1.0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Supprimer le code du champ de recherche
        title: const Text(
          'Add an article',
          style: TextStyle(
            color: Colors.black,


          ),
        ),
        automaticallyImplyLeading: false,

      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the Add Screen',
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
                MyApp.navigatorKey.currentState?.popUntil((route) => route.isFirst);
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
