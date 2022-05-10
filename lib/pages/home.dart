import 'package:flutter/material.dart';
import 'package:instragram_clone/utils/stories_bubble.dart';
import 'package:instragram_clone/utils/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);
  final List people = ['Harsh', 'obama', 'modi', 'kejry', 'mamta', 'amol'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            //stories
            Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return StoryBubble(text: people[index]);
                  }),
            ),
            // posts
            Expanded(
                child: ListView.builder(
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return UserPosts(name: people[index]);
                    }))
          ],
        ));
  }
}
