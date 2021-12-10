import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screen/chat_screen.dart';
import 'screen/sign_in.dart';
import 'screen/sign_up.dart';
import 'screen/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    initialRoute:'welcome_screen',
      routes: {
        WelcomeScreen.screenRoute:(context)=>WelcomeScreen(),
        SignIn.screenRoute:(context)=>SignIn(),
        SignUp.screenRoute:(context)=>SignUp(),
        ChatScreen.screenRoute:(context)=>ChatScreen(),
      },
    );
  }
}
