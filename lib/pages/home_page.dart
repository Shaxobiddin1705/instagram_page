import 'package:flutter/material.dart';

import 'first_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.photo_camera,
            size: 28,
          ),
          color: Colors.grey,
        ),
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: Colors.grey, fontSize: 28, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            // alignment: Alignment.centerLeft,
            onPressed: () {},
            icon: const Icon(
              Icons.live_tv_outlined,
              size: 28,
            ),
            color: Colors.grey,
          ),
          IconButton(
            // alignment: Alignment.centerLeft,
            onPressed: () {},
            icon: const Icon(
              Icons.send,
              size: 28,
            ),
            color: Colors.grey,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: const Text(
                          "Stories",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        padding: const EdgeInsets.only(top: 20, left: 20),
                      ),
                      Container(
                        child: const Text(
                          "Watch all",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        padding: const EdgeInsets.only(top: 20, left: 235),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        _widget(
                            image: "assets/images/image5.jpeg", name: "Lavina"),
                        _widget(
                            image: "assets/images/image6.jpg", name: "John"),
                        _widget(
                            image: "assets/images/ic_araujo.png",
                            name: "Araujo"),
                        _widget(
                            image: "assets/images/ic_logo2.png",
                            name: "Barcelona"),
                      ],
                    ),
                  ),
                  _profile(
                      profileImage: "assets/images/image5.jpeg",
                      image: "assets/images/wallpaper.jpg",
                      name: "Lavina",
                      liker: "Araujo, Lavina, John",
                      text: "Creative nature"),
                  _profile(
                      profileImage: "assets/images/ic_araujo.png",
                      image: "assets/images/ic_araujo.png",
                      name: "Araujo",
                      liker: "Araujo, Lavina, John",
                      text: "This is powered by Barcelona"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _widget({image, name}) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 33,
              child: ClipOval(
                child: Image.asset(
                  image,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.purple),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            child: Text(
              name,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            padding: const EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }

  Widget _profile({profileImage, name, image, liker, text}) {
    return Container(
      padding: const EdgeInsets.only( top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 23,
                  child: ClipOval(
                    child: Image.asset(profileImage),
                  ),
                ),
              ),
              Container(
                width: 270,
                padding: const EdgeInsets.only(left: 10, bottom: 15),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 35,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            // padding: EdgeInsets.only(top: 5),
            height: 250,
            width: double.maxFinite,
            child: Image.asset(
              image,
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10,),
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                child: IconButton(
                  icon: const Icon(
                    Icons.comment,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                child: IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 170),
                child: IconButton(
                  icon: const Icon(
                    Icons.save_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20,),
                child: Text(
                  "Liked by $liker and others",
                  style: const TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20,),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
