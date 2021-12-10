import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widget/material_button.dart';
class SignIn extends StatefulWidget {
  static const String screenRoute='signin_screen';
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image(image: AssetImage('assets/back.png'),height: 250,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Material(borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              child: TextField(keyboardType:  TextInputType.emailAddress,

                onChanged: (value) {
                  email= value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2),

                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Material(borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              child:

                  TextField(
                    obscureText: true,

                    keyboardType:   TextInputType.visiblePassword,

                    onChanged: (value) {
                      password= value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your Password',

                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange, width: 2),

                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    ),
                    style: const TextStyle(fontSize: 20),
                  ),

              ),
            ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(onPressed: (){
              setState(() {
                x=TextInputType.text;
              });
            }, child: Icon(CupertinoIcons.compass)),
          ),

          SizedBox(height: 25,),
          MaterialButtonW(color: Colors.blue[700]!,onPressed: (){},title: 'Sign In',)
        ],
      ),
    );
  }
  TextInputType x=TextInputType.visiblePassword;
}
