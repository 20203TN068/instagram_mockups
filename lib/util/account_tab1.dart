import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  final List<String> userPosts = [];

  AccountTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.blue[100],
          ),
        );
      },
    );
  }
}
