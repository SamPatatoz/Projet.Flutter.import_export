import 'package:flutter/material.dart';
import 'navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color pastelPurple = const Color.fromRGBO(204, 188, 254, 1.0);
    Color metallicGrey = Colors.grey[200]!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Your profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: metallicGrey,
        child: ListView(
          children: <Widget>[
            buildButtonWithIcon(Icons.favorite, 'Favorites', context),
            buildButtonWithIcon(Icons.shopping_cart, 'My Purchases', context),
            buildButtonWithIcon(Icons.monetization_on, 'My Sales', context),
            SizedBox(height: 10),
            SizedBox(height: 10),
            buildButtonWithIcon(Icons.star, 'Ratings', context),
            SizedBox(height: 10),
            SizedBox(height: 10),
            buildButtonWithIcon(Icons.settings, 'Settings', context),
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
                Navigator.of(context).popUntil((route) => route.isFirst);
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
                  NavigationHelper.openAddScreen(context);
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButtonWithIcon(IconData iconData, String text, BuildContext context) {
    return TextButton(
      onPressed: () {
        // Action pour le bouton
      },
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        backgroundColor: Colors.white, // Couleur du fond du bouton
        minimumSize: Size(double.infinity, 60), // Taille du bouton
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(iconData),
              SizedBox(width: 10),
              Text(text),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
