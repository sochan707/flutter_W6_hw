import 'package:flutter/material.dart';

class HobbyButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  final IconData icon;
  final Color textColor;

  const new({
    super.key,
    required this.bgColor,
    required this.text,
    required this.icon,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor
      ),
      child: Row(
        spacing: 20,
        children: [
          Icon(icon, color: Colors.white),
          Text(text,
            style: TextStyle(
              color: textColor,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ), 
    );
  }
}
