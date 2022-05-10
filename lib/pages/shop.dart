import 'package:flutter/material.dart';
import 'package:instragram_clone/utils/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

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
              'Shop',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.calendar_today_outlined),
                ),
                Icon(Icons.shopping_bag_outlined),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey[500]),
                    Container(
                      child: Text(
                        ' Search',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: ShopGrid())
        ],
      ),
    );
  }
}
