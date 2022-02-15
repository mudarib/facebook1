import 'package:flutter/material.dart';
class Deadline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Deadline and success"),
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
          Center(child: Text("Never waste your time")),
            //],
          //),
          SizedBox(height: 23,),
          Expanded(child: Image.asset('images/deadline.jpg'),),
          ElevatedButton.icon(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.assignment_return), label: Text("Back"))
        ],
      ),
    ),
    );
  }
}