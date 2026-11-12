import 'package:flutter/material.dart';
import 'EX-2.dart';

class CustomButton extends StatelessWidget {
  final ButtonType bgColor;
  final String buttonText;
  final IconData icon;
  final IconPossition possition;

  const CustomButton({
    super.key,
    this.bgColor = ButtonType.primary,
    required this.buttonText,
    required this.icon,
    this.possition = IconPossition.left,
    
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275,
      child: ElevatedButton(
        onPressed: onClick, 
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor.color,
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(possition == IconPossition.left) ...[
              Icon(icon)
            ],
      
            Text(buttonText),
      
            if(possition == IconPossition.right) ...[
              Icon(icon)
            ]
          ],
        )),
    );
  }
}