import 'package:flutter/material.dart';
import 'package:instragram_clone/utils/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      numberOfComments: '28341',
      numberOfLikes: '2M',
      numberOfShares: '22193',
      username: 'RandomUser',
      videoDesc: 'Insta reel',
      userPost: Container(
        color: Colors.red[100],
      ),
    );
  }
}
