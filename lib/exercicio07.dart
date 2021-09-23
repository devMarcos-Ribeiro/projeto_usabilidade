import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(110.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
          child: Image(
            image: NetworkImage(
              'https://picsum.photos/250?image=37',
            ),
          )),
    ),
  );
}
