import 'package:flutter/material.dart';
import 'package:instragram_clone/utils/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      numberOfComments: '2834',
      numberOfLikes: '3.2M',
      numberOfShares: '2193',
      username: 'Modiji',
      videoDesc: 'Insta reel',
      userPost: Container(
        color: Colors.deepOrange[100],
      ),
    );
  }
}
