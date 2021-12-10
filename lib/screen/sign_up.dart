import 'package:ctg/screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widget/material_button.dart';


class SignUp extends StatefulWidget {
  static const String screenRoute='singup_screen';
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth=FirebaseAuth.instance;
   late String email;
    late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/back.png'),height: 250,),

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
              child: TextField(
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


          const SizedBox(height: 25,),
          MaterialButtonW(color: Colors.blue[700]!,
            onPressed: () async{

          try{
            await _auth.createUserWithEmailAndPassword(
                email: email, password: password);
            Navigator.pushNamed(context,ChatScreen.screenRoute);

          }catch(e){print(e);}
          },title: 'Sign Up',)
        ],
      ),
    );
  }
}
