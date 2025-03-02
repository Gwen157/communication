import 'package:flutter/material.dart';

class HungerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("J'ai faim"),
      ),
      body: Center(
        child: GridView.count(
          padding: EdgeInsets.all(16.0),
          crossAxisCount: 2,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Chips");
              },
              child: Text("Chips"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Pizza");
              },
              child: Text("Pizza"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Pâtes");
              },
              child: Text("Pâtes"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Burger");
              },
              child: Text("Burger"),
            ),
          ],
        ),
      ),
    );
  }
}
