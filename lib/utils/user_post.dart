import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        //Post
        Container(
          height: 300,
          color: Colors.grey[300],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
        ),
        // like by
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'ObamaBarrack',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        // caption
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                      text: ' It always seems impossible until it is done',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
