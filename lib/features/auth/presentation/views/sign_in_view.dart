import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        actions: [
          IconButton(
            onPressed: () {
              customNavigateReplacment(context, '/signUp');
            },
            icon: Icon(Icons.logout),
          )],
      ),

      body: Center(
        child: Text('Sign In'),
      ),
    );
  }
}
