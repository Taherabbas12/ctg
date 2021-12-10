import 'package:ctg/main.dart';
import 'package:ctg/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/material_button.dart';
import 'sign_in.dart';
class WelcomeScreen extends StatefulWidget {
  static const String screenRoute='welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:  SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
                SizedBox(height: 80,),
                Image(image: AssetImage('assets/back.png'),),
            Center(child: Text('CTG',style: TextStyle(fontSize: 50,
                fontWeight:FontWeight.bold, color: Colors.red,),
            )),
            SizedBox(height: 100,),
            MaterialButtonW(onPressed: (){
            Navigator.pushNamed(context, SignIn.screenRoute);
            },color:Colors.blue.shade800
              ,title: 'Sign In',),
            MaterialButtonW(onPressed: (){
              Navigator.pushNamed(context, SignUp.screenRoute);
            },color: CupertinoColors.systemRed,title: 'Sign Up',),
              ],
    ))
    );
  }
}
