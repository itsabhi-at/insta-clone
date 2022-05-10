import 'package:flutter/material.dart';
import 'package:instragram_clone/utils/my_post1.dart';
import 'package:instragram_clone/utils/my_post2.dart';
import 'package:instragram_clone/utils/my_post3.dart';

class UserReels extends StatelessWidget {
  UserReels({Key? key}) : super(key: key);
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
