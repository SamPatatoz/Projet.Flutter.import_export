import 'package:flutter/material.dart';

import 'main.dart';
import 'message.dart';
import 'profile.dart';
import 'notification.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Supprimer le code du champ de recherche
        title: const Text(
          'Vos messages',
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
              'This is the Message Screen',
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
                // Action du deuxième bouton
              },
            ),
            IconButton(
              icon: const Icon(Icons.add_sharp),
              onPressed: () {
                // Action du troisième bouton
              },
            ),
            IconButton(
              icon: const Icon(Icons.notification_important),
              onPressed: () {
                // Action du quatrième bouton
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Action du cinquième bouton
              },
            ),
          ],
        ),
      ),
    );
  }
}
