import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MaterialButtonW extends StatelessWidget {

  MaterialButtonW({required this.color, required this.title, required this.onPressed});
  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal:10),
      child: CupertinoButton(onPressed:onPressed,
        child: Text(title),
        color: color,
        borderRadius: BorderRadius.circular(15),)
      );
  }
}