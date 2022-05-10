import 'package:flutter/material.dart';
import 'package:instragram_clone/utils/account_tab1.dart';
import 'package:instragram_clone/utils/account_tab2.dart';
import 'package:instragram_clone/utils/account_tab3.dart';
import 'package:instragram_clone/utils/account_tab4.dart';
import 'package:instragram_clone/utils/stories_bubble.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                '283',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Posts',
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '2844',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Followers',
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '22',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Following',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Abhishek',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4, bottom: 4),
                child: Text(
                  'Love to code and travel',
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'abhishektomar.netlify.app',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Icon(
                          Icons.person_add,
                          size: 24,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    StoryBubble(text: 'Story 1'),
                    StoryBubble(text: 'Story 2'),
                    StoryBubble(text: 'Story 3'),
                    StoryBubble(text: 'Story 4'),
                  ],
                ),
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.video_call),
                  ),
                  Tab(
                    icon: Icon(Icons.shop),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_contact_calendar_outlined),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
