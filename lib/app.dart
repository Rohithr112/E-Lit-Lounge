import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lithabit/screens/login_screen.dart';
import 'package:lithabit/screens/screens_wrapper.dart';
import 'package:lithabit/themes/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  bool _isLoggedIn = false; 

  @override
  void initState() {
    super.initState();
    _startDelayTimer();
    _checkLoginStatus();
  }

  void _startDelayTimer() {
    Timer(const Duration(seconds: 6), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  void _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    setState(() {
      _isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lit Habit',
      
     
      home: Scaffold(
        body: _isLoading ? _buildLoadingScreen() :  
        _isLoggedIn ? ScreensWrapper() : LoginForm(),
      ),
    );
  }

  Widget _buildLoadingScreen() {
    return Center(
      child: Image.asset(
        'assets/loader.gif',
        fit: BoxFit.contain,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
  

}
// void _loginSuccess() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setBool('isLoggedIn', true);
//   setState(() {
//     _isLoggedIn = true;
//   });
// }
// void _logout() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setBool('isLoggedIn', false);
//   setState(() {
//     _isLoggedIn = false;
//   });
// }
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:lithabit/login_status.dart';
// import 'package:lithabit/screens/login_screen.dart';
// import 'package:lithabit/screens/screens_wrapper.dart';
// import 'package:lithabit/themes/app_theme.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _startDelayTimer();
//     _checkLoginStatus(); // Check login status when app starts
//   }

//   void _startDelayTimer() {
//     Timer(const Duration(seconds: 3), () {
//       setState(() {
//         _isLoading = false;
//       });
//     });
//   }

//   void _checkLoginStatus() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     isLoggedIn = prefs.getBool('isLoggedIn') ?? false; // Update global variable
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Lit Habit',
//       theme: customTheme,
//       home: Scaffold(
//         body: _isLoading ? _buildLoadingScreen() :  
//         isLoggedIn ? ScreensWrapper() : LoginForm(), // Use global variable
//       ),
//     );
//   }

//   Widget _buildLoadingScreen() {
//     return Center(
//       child: Image.asset(
//         'assets/loader.gif',
//         fit: BoxFit.contain,
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//       ),
//     );
//   }
// }
