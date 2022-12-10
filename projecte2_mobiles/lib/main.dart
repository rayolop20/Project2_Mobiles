import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projecte2_mobiles/Windows/HomeWindow.dart';
import 'package:projecte2_mobiles/firebase_options.dart';

import 'Windows/ProfilesWindow.dart';

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
    return MaterialApp(
      initialRoute: '/Home',
      routes: {
        '/Home': (_) => const FirstScreen(),
        '/Profile': (_) => const ProfileScreen(),
      },
    );
  }
}
