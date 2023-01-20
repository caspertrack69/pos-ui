import 'package:pos_ui/state_util.dart';
import 'package:flutter/material.dart';
import 'package:pos_ui/core.dart';

import 'package:pos_ui/module/onboarding/onboarding.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POS',
navigatorKey: Get.navigatorKey,
      home: Builder(
        builder: (BuildContext context) {
          final screenHeight = MediaQuery.of(context).size.height;

          return Onboarding(screenHeight: screenHeight);
        },
      ),
    );
  }
}

void main() => runApp(App());
