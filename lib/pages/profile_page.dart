// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                "lanevreal?",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Icon(Icons.verified, color: Colors.blue),
              Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined, color: Colors.black)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black))
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts", "18"),
                      InfoItem("Followers", "2.8m"),
                      InfoItem("Following", "1"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Yafi?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                text: TextSpan(
                    text:
                        "Just an normal person                                             ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: "@gfanshaz",
                          style: TextStyle(color: Colors.blue[900]),
                          children: [
                            TextSpan(
                                text: "'s",
                                style: TextStyle(color: Colors.black))
                          ]),
                    ]),
              )),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black),
                  ))),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                StoryItem(
                  "Love",
                ),
                StoryItem(
                  "Florist",
                ),
                StoryItem(
                  "Foodies",
                ),
                StoryItem(
                  "Hedon",
                ),
                StoryItem(
                  "Code",
                ),
                StoryItem(
                  "Friendship",
                )
              ]),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.person_pin_outlined, false),
              // Expanded(child: Container(child: Icon(Icons.person_pin_outlined)))
            ],
          )
        ]));//ghfhgf
  }
}

class TabItem extends StatelessWidget {
  TabItem(this.icon, this.active);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: active == true ? Colors.black : Colors.white,
                        width: 1))),
            child: Icon(icon)));
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
              ),
            ),
            Container(
              height: 77,
              width: 77,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://picsum.photos/200/300'))),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
