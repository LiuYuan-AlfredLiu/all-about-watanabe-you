import 'package:about_watanabe_you/navigation/home_bar.dart';
import 'package:about_watanabe_you/navigation/person_bar.dart';
import 'package:about_watanabe_you/navigation/photo_album_bar.dart';
import 'package:about_watanabe_you/navigation/photo_clothes_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MenuBarLogo extends StatefulWidget {
  const MenuBarLogo({super.key});

  @override
  State<MenuBarLogo> createState() => _MenuBarLogo();
}

class _MenuBarLogo extends State<MenuBarLogo> {
  int index = 0;
  final List<Widget> pageList = [
    HomeBar(),
    PersonBar(),
    PhotoAlbumBar(),
    PhotoClothesBar()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "About You-chan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'HarunoUmi'
          )
        )
      ),

      body: pageList[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: index,
        color: Color.fromARGB(255, 245, 245, 245),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Color.fromARGB(255, 102, 192, 255),
          ),

          Icon(
            Icons.person,
            size: 30,
            color: Color.fromARGB(255, 102, 192, 255),
          ),

          Icon(
            Icons.photo_album,
            size: 30,
            color: Color.fromARGB(255, 102, 192, 255),
          ),

          Icon(
            Icons.photo,
            size: 30,
            color: Color.fromARGB(255, 102, 192, 255),
          )
        ],

        onTap: (i) => setState(() => index = i),
      ),
    );
  }
}