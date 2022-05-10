import 'package:flutter/material.dart';
import 'package:instragram_clone/utils/my_buttons.dart';
import 'package:instragram_clone/utils/user_post.dart';

class PostTemplate extends StatelessWidget {
  const PostTemplate(
      {Key? key,
      required this.username,
      required this.videoDesc,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfShares,
      this.userPost})
      : super(key: key);
  final String username;
  final String videoDesc;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@ ' + username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: videoDesc,
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' #flutter#practise',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButtons(icon: Icon(Icons.favorite), number: numberOfLikes),
                  MyButtons(
                      icon: Icon(Icons.chat_bubble_outline),
                      number: numberOfComments),
                  MyButtons(icon: Icon(Icons.send), number: numberOfShares),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
