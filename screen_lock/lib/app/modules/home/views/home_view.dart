import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

import 'package:get/get.dart';
import 'package:get_cli/common/utils/json_serialize/json_ast/tokenize.dart';

import 'package:screen_lock/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final inputController = InputController();
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          //
          //
          //
          //
          //
          style: ElevatedButton.styleFrom(
            animationDuration: Duration(
              seconds: 4,
            ),
            side: BorderSide(
              color: Colors.amber,
              width: 10,
            ),
            // shape: CircleBorder(),
            elevation: 20,
            visualDensity: VisualDensity(
              horizontal: 45.0,
              vertical: 20.0,
            ),
          ),

          onPressed: () {
            Get.offAllNamed(Routes.NEXT);
            screenLock(
              context: context,
              correctString: '1111',
              cancelButton: Text("Cancle"),
              confirmTitle: Text("Ok"),
              inputController: inputController,
              canCancel: true,
              didConfirmed: (matchedText) {
                print(matchedText);
              },
              screenLockConfig: ScreenLockConfig(
                backgroundColor: Color(0xff370617),
                // themeData: ThemeData(

                //   applyElevationOverlayColor: true,
                //   backgroundColor: Colors.red,
                //   brightness: Brightness.dark,
                //   cardColor: Colors.brown,
                //   primaryColor: Colors.deepOrangeAccent,

                // ),
              ),
            );
            // inputButtonConfig:
            // InputButtonConfig(
            //   textStyle:
            //       InputButtonConfig.getDefaultTextStyle(context).copyWith(
            //     color: Colors.orange,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   buttonStyle: OutlinedButton.styleFrom(
            //     shape: RoundedRectangleBorder(),
            //     backgroundColor: Colors.deepOrange,
            //   ),
            // );

            inputController.unsetConfirmed();
          },
          child: Text(
            "press",
          ),
        ),
      ),
    );
  }
}
