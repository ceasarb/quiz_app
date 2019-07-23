import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
      // Firebase Analytics
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics())
      ],

      // Named Routes
      routes: {
        // '/': (context) => LoginScreen(),
        // '/topics': (context) => TopicsScreen(),
        '/profile': (context) => ProfileScreen(),
        // '/about': (context) => AboutScreen(),
      },
    );
  }
}
