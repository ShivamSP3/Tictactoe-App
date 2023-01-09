import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/Screens/game_screen.dart';
import 'package:tictactoe/Screens/join_room.dart';
import 'package:tictactoe/Screens/main_menu_screen.dart';
import 'package:tictactoe/Utils/colors.dart';
import 'package:tictactoe/resources/room_data_provider.dart';

import 'Screens/create_room.dart';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomDataProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor
        ),
        routes: {
          MainMenuScreen.routeName :(context) => const MainMenuScreen(),
          JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
          CreateRoomScreen.routeName:(context) => const CreateRoomScreen(),
          GameScreen.routeName:(context) => const GameScreen()
        },
        initialRoute: MainMenuScreen.routeName,
      ),
    );
  }
}