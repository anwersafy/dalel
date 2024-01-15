import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customNavigateReplacment(context, '/signIn');
            },
            icon: const Icon(Icons.logout),
      )],
      ),
      body: const Center(
        child: Text('HomeView'),
      ),
    );
  }
}
