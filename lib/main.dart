import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practical_google_maps_example/core/routing/router_generation_config.dart';
import 'package:practical_google_maps_example/core/styling/theme_data.dart';
import 'package:practical_google_maps_example/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Order Tracking',
          theme: AppThemes.lightTheme,
          routerConfig: RouterGenerationConfig.goRouter,
        );
      },
    );
  }
}
