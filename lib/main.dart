import 'package:flutter/material.dart';
import 'package:islami_c10_friday/ui/home/home_screen.dart';
import 'package:islami_c10_friday/ui/home/screens/sura_details_screen.dart';
import 'package:islami_c10_friday/ui/home/splash_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(size: 40)),
        cardColor: Colors.white,
      ),
      routes: {
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
