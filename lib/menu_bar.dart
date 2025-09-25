import 'package:about_watanabe_you/all_episode_season.dart';
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

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  final String background = "She is a second year and a classmate of Chika-chan, who "
      "is her childhood friend along with Kanan-chan. Her father captains a ferry "
      "and she would like to have his job someday. Her catchphrase is \"Yousoro!\" "
      "(ヨーソロー！ lit. Aye Aye!), on which she salutes like a sailor. This is "
      "often accompanied by the phrase \"Zensoku zenshin!\" (全速前進！ Full "
      "speed ahead!). She also has a cousin named Tsuki-chan, who lived in "
      "Italy.\n\n"
      "In the first episode, on a trip to Tokyo with Chika-chan, the "
      "two learned about school idols and the Love Live! tournament after seeing "
      "a screen with school idols at the Akiba Dome, including µ's. After Chika-"
      "chan becomes fascinated with the idea of school idols, You-chan follows "
      "her into opening a school idol club of their own at their high school.";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 26.3,
              right: 15.2,
              left: 15.2
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(10, 21)
                )
              ]
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('image/photo/you-chan_cute.png')
            )
          ),

          Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                'You-chan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.6,
                  fontFamily: 'HarunoUmi',
                  color: Colors.lightBlue
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 30,
              left: 10,
              right: 10,
              bottom: 20
            ),

            child: Text(
              background,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Tokumin',
                fontSize: 16.5
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 13.2,
              bottom: 15.2
            ),

            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 102, 192, 255),
                    foregroundColor: Colors.white
                  ),

                  child: const Text(
                    "You-chan Episode",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.5,
                      fontFamily: 'Tokumin',
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, allEpisodeSeason) => AllEpisodeSeason(),
                        transitionsBuilder: (context, animation, allEpisodeSeason, child) {
                          const begin = Offset(2.3, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;

                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },

                        transitionDuration: Duration(milliseconds: 1000)
                      )
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PersonBar extends StatelessWidget {
  const PersonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 23.5,
              left: 15.9,
              right: 15.9,
              bottom: 30
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(10, 21)
                )
              ],
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('image/photo/you-chan_happy.png'),
            ),
          )
        ],
      ),
    );
  }
}

class PhotoAlbumBar extends StatelessWidget {
  const PhotoAlbumBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}

class PhotoClothesBar extends StatelessWidget {
  const PhotoClothesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}