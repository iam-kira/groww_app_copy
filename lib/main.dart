import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/google_sign_in.dart';
import 'package:todoapp/login_page.dart';
import 'homepage.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context)=> GoogleSignInApi(),
    child: MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      routes: {
        "/": (context) => HomePage(),
        // "/home": (context) => HomePage(),
      },
    )
  );
  }
  // void didChangeDependencies() {
  //   precacheImage(AssetImage("assets/logo.png"), context);
  //   precacheImage(AssetImage("assets/home_bg.png"), context);
  //   super.didChangeDependencies();
  // }

