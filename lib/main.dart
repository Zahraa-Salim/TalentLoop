import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:talentloop/start_app_screens/splash_screen.dart';
import 'services/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const TalentLoopApp());
}

class TalentLoopApp extends StatelessWidget {
  const TalentLoopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TalentLoop',
      debugShowCheckedModeBanner: false, // Removed debug banner
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
