import 'package:flutter/material.dart';
import 'Ex-3.dart';

class ProductCard extends StatelessWidget {
  final Products product;

  const new({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(product.image, scale: 2.5),
          Text(
            product.title,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            product.decription,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ],
      ),
    );
  }
}