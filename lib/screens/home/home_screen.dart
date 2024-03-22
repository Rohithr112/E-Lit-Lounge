import 'package:flutter/material.dart';
import 'package:lithabit/screens/home/sections/all_purchased_books.dart';
import 'package:lithabit/screens/login_screen.dart';
import 'package:lithabit/widgets/keep_reading_section.dart';
import 'package:lithabit/widgets/last_opened_book.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 241, 241),
      appBar: AppBar(
        title: Text(
          "E-LIT LOUNGE",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        actions: [
       IconButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                final shared = await SharedPreferences.getInstance();
             shared.clear();
Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) {
      return LoginForm();
    },
  ),
  (route) => false,
);
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  },
  icon: Icon(Icons.logout),
)

        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              LastOpenedBook(),
              KeepReadingSection(),
              AllPurchasedBooks(),
            ],
          ),
        ),
      ),
    );
  }
}
