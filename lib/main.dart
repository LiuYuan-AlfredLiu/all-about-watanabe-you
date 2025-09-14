import 'package:about_watanabe_you/menu_package.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About You-chan',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Color.fromARGB(255, 0, 159, 232),
        )
      ),

      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  final List<Widget> pagesList = [
    HomePage(),
    PersonPage(),
    PhotoAlbumPage(),
    PhotoPage()
  ];
  var index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),

      Icon(
        Icons.person,
        size: 30,
      ),

      Icon(
        Icons.photo_album,
        size: 30,
      ),

      Icon(
        Icons.photo,
        size: 30,
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About You-chan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'HarunoUmi'
          ),
        ),

        elevation: 0,
        centerTitle: true,
      ),

      body: pagesList[index],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: index,
        items: items,
        onTap: (i) => setState(() => index = i),
      ),
    );
  }
}