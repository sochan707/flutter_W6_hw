import 'package:flutter/material.dart';
import 'HobbyButton.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        child: Column(
          children: [
            Text('My Hobby'),
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.grey,
              child: Center(
                child: Column(
                  spacing: 20,
                  children: [
                    HobbyButton(bgColor: Colors.green, text: 'Traveling', icon: Icons.travel_explore, textColor: Colors.white),
                    HobbyButton(bgColor: Colors.blue, text: 'Skating', icon: Icons.skateboarding, textColor: Colors.white)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    )
  );
}


