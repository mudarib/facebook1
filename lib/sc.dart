import 'package:flutter/material.dart';
class SC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Project for halal investments"),
          ],
        ),
      ),
    body: Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: ListView(
        children: [
          //Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //children: [
          Center(child: Text("Smart Contract based project")),
            //],
          //),
          SizedBox(height: 23,),
          Expanded(child: Image.asset('images/smart contracts.jpg'),),
          ElevatedButton.icon(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.assignment_return), label: Text("Back"))
        ],
      ),
    ),
    );
  }
}