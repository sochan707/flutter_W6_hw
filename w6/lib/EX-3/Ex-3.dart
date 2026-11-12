import 'package:flutter/material.dart';
import 'ProductCard.dart';

enum Products {
  dart(
    title: 'Dart',
    decription: "Learn Dart Basic",
    image: 'assets/ex3/dart.png',
  ),
  flutter(
    title: 'Flutter',
    decription: "Learn Flutter basic",
    image: 'assets/ex3/flutter.png',
  ),
  firebase(
    title: 'Firebase',
    decription: "Learn Firebase",
    image: 'assets/ex3/firebase.png',
  );

  final String title;
  final String decription;
  final String image;

  Products({
    required this.title,
    required this.decription,
    required this.image,
  });
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text('Products', style: TextStyle(fontSize: 24)),
              ),

              Container(
                width: double.infinity,
                color: Colors.blue,
                padding: EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 15,
                  children: [
                    ProductCard(product: Products.dart),
                    ProductCard(product: Products.flutter),
                    ProductCard(product: Products.firebase),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}