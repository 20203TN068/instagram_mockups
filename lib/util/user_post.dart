import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  const UserPosts({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 10),
                  // name
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),

        // post
        Container(
          height: 300,
          color: Colors.grey[300],
        ),

        // below the post -< buttons and comments
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        // like by....
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(children: [
            Text('Liked by '),
            Text(
              'panchito',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(' and '),
            Text(
              'others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
        ),

        // caption
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                  TextSpan(
                      text: name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(
                      text:
                          'I went there the last year and it was so cold, hope u did not pass the same'),
                ]))),

        // comments
      ],
    );
  }
}
