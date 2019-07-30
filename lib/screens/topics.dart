import 'package:flutter/material.dart';
import 'package:quiz_app/shared/app_bottom_nav.dart';

class TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics'),
        backgroundColor: Colors.purple,
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}
