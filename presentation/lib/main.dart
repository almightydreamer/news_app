
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dependency_injection/dependency_injection.dart' as di;
import 'package:presentation/persistent_bottom_nav/persistent_bottom_nav.dart';

void main() {
  di.init();
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          canvasColor: Colors.transparent,
        ),
        home: const PersistentBottomPage());
  }
}
