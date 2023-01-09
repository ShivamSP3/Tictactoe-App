import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/Widgets/custom_textField.dart';
import 'package:tictactoe/resources/room_data_provider.dart';

class WaitingLobby extends StatefulWidget {
  const WaitingLobby({super.key});

  @override
  State<WaitingLobby> createState() => _WaitingLobbyState();
}
class _WaitingLobbyState extends State<WaitingLobby> {
 late  TextEditingController roomIdController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    roomIdController = TextEditingController(
      text: Provider.of<RoomDataProvider>(context,listen: false).roomData['_id']
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    roomIdController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Text('Waiting for a player to Join',style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          CustomTextField(controller: roomIdController,isReadOnly: true, hintText: ''),
          Text('Copy the above Id to join ')
    ],);
  }
}