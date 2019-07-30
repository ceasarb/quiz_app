import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_app/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // FirebaseUser user = Provider.of<FirebaseUser>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('profile'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('logout'),
          color: Colors.red,
          onPressed: () async {
            await auth.signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          },
        ),
      ),
    );
  }
}
