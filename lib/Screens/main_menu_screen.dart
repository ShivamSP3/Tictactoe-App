// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/Responsive/responsive.dart';
import 'package:tictactoe/Screens/create_room.dart';
import 'package:tictactoe/Screens/join_room.dart';
import 'package:tictactoe/Widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Responsive(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.blue, blurRadius: 5, spreadRadius: 0)
            ]),
            child: ElevatedButton(
                onPressed: () => createRoom(context),
                child: Text(
                  "Create Room",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),style: ElevatedButton.styleFrom(minimumSize: Size(width, 50))),
          ),
         
          SizedBox(height: 20),
          
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.blue, blurRadius: 5, spreadRadius: 0)
            ]),
            child: ElevatedButton(
                onPressed: () => joinRoom(context),
                child: Text(
                  "Join Room",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),style: ElevatedButton.styleFrom(minimumSize: Size(width, 50))),
          )
        ],
      ),
    ));
  }
}

