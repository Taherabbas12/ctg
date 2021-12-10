import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatScreen extends StatefulWidget {
  static const String screenRoute='chat_screen';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth=FirebaseAuth.instance;
 late User signInUser;
 @override
  void initState() {
    super.initState();
    getCurrentUser();
  }
  void getCurrentUser() {
    final user = _auth.currentUser;

    try {
      if (user != null) {
        signInUser = user;
       print( signInUser.email);
      } }catch (e) {print(e);}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.purple ,
        title:Row(children: [CircleAvatar(
          child:  Image.asset('assets/back.png'),backgroundColor: Colors.purple.shade200,),
          SizedBox(width: 10,),
          Text('MessageMe')
        ]
          ,)
        ,

      actions: [CupertinoButton(child: Icon(CupertinoIcons.fullscreen_exit,color: Colors.white,), onPressed: (){})],),
    body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

         Container(),
          Container(decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width:2,color: Colors.purple
              ),)
          ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Expanded(flex: 9,
                child: TextField(
                onChanged: (value){},style: TextStyle(
                  fontSize: 17
                )
                  ,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical:20,
                    horizontal: 20
                  ),
                  hintText: 'Write your message here...',
                  border: InputBorder.none
                ),
              ),),
                Expanded(flex: 2,
                  child: CupertinoButton(
                      onPressed:(){} ,
                      child: Text('Send',
                        style: TextStyle( fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                )

            ],),)
        ],
      ),
    ),
    );
  }
}
