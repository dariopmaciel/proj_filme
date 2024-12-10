import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Splash Page'),
      // ),
      body: Center(
        child:
            // Text('data'),
            // Text(FirebaseRemoteConfig.instance.getString('api_token')),
            Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/1x/background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset('assets/images/1x/logo.png'),
        ),
      ),
    );
  }
}
