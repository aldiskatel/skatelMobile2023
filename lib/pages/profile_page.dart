// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/story_item.dart';
import '../widgets/tab_item.dart';
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
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), 
          label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search), 
          label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.movie_filter_rounded), 
          label: "Movie",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded), 
          label: "Shop",),
          BottomNavigationBarItem(icon: Icon(Icons.person), 
          label: "Profile",)
        ]),
        );
  }
}
