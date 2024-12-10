
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body:  Center(
        child:
            // Text('data'),
            Text(FirebaseRemoteConfig.instance.getString('api_token')),
      ),
    );
  }
}
