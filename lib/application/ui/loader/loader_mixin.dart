import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin LoaderMixin on GetxController {
  void loaderListener(RxBool loaderRx) {
    //workers...trabalhadores escutadores
    ever<bool>(
      loaderRx,
      (loading) async {
        if (loading) {
          //
          await Get.dialog(
            const Center(child: CircularProgressIndicator()),
            barrierDismissible: false, // se clicar fora não fecha o loader
          );
        } else {
          //
          Get.back();
        }
      },
    );
  }
}
