
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'screens/splash_screen.dart'; // initial splash screen
// import 'screens/home_screen.dart';
import 'screens/wallet_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const Splash(), 
      // home:  Home(), 
      home:  WalletScreen(), 
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}




