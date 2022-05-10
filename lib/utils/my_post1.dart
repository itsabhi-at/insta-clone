import 'package:flutter/material.dart';

import 'package:instragram_clone/utils/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      numberOfComments: '2834',
      numberOfLikes: '1.2M',
      numberOfShares: '2193',
      username: 'Abhishek',
      videoDesc: 'Insta reel',
      userPost: Container(
        color: Colors.deepPurple[100],
      ),
    );
  }
}
