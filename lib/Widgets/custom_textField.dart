import'package:flutter/material.dart';
import 'package:tictactoe/Utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isReadOnly;
  const CustomTextField({super.key,
   required this.controller,
   this.isReadOnly = false,
    required this.hintText});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.blue,blurRadius: 5,spreadRadius: 2)
        ]),
        child: TextField(
          readOnly: isReadOnly,
          controller: controller,
          decoration: InputDecoration(
            fillColor: bgColor,filled:  true,
            hintText: hintText
          ),
        ),
      ),
    );
  }
}