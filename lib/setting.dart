import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("App Color "),
            Icon(Icons.toggle_off),
           
            



           
          ],
        ),
      ),

    );
  }
}