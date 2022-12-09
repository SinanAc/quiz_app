import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/bindings/initial_bindings.dart';
import 'package:quiz_app/controllers/theme_controller.dart';
import 'package:quiz_app/routs/routs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Get.find<ThemeController>().lightTheme,
      getPages: AppRouts.routs(),
    );
  }
}
