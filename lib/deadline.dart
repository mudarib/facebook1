import 'package:flutter/material.dart';
class Deadline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deadline and success"),
      ),
    body: ListView(
      children: [
        Text("full article"),
        SizedBox(height: 23,),
        Expanded(child: Image.asset('images/deadline.jpg'),),
        ElevatedButton.icon(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.assignment_return), label: Text("Back"))
      ],
    ),
    );
  }
}