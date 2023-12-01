import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  final List<String> userPost = [];
  ShopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(color: Colors.pink[100]),
          );
        });
  }
}
