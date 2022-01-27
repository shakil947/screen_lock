import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:screen_lock/app/routes/app_pages.dart';

class NextView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAllNamed(Routes.HOME);
          },
          child: Text("Go to Home"),
        ),
      ),
    );
  }
}
