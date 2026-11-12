import 'package:flutter/material.dart';
import 'CustomButton.dart';

enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Colors.grey);

  final Color color;

  const ButtonType(this.color);
}

enum IconPossition {
  left,
  right
}

void onClick(){
  print('hello');
}

void main(){
  runApp(
    MaterialApp(
      home: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          spacing: 10,
          children: [
            CustomButton(buttonText: 'Submit', icon: Icons.check),
            CustomButton(bgColor: ButtonType.secondary, buttonText: 'Time', icon: Icons.timelapse, possition: IconPossition.right),
            CustomButton(bgColor: ButtonType.disabled, buttonText: 'Submit', icon: Icons.check, possition: IconPossition.left),
          ],
        ),
      ),
    )
  );
}


