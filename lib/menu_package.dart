import 'package:about_watanabe_you/episode_person.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final background = "She is a second year and a classmate of Chika-chan, who "
        "is her childhood friend along with Kanan-chan. Her father captains a ferry "
        "and she would like to have his job someday. Her catchphrase is \"Yousoro!\" "
        "(ヨーソロー！ lit. Aye Aye!), on which she salutes like a sailor. This is "
        "often accompanied by the phrase \"Zensoku zenshin!\" (全速前進！ Full "
        "speed ahead!). She also has a cousin named Tsuki-chan, who lived in "
        "Italy.\n\nIn the first episode, on a trip to Tokyo with Chika-chan, the "
        "two learned about school idols and the Love Live! tournament after seeing "
        "a screen with school idols at the Akiba Dome, including µ's. After Chika-"
        "chan becomes fascinated with the idea of school idols, You-chan follows "
        "her into opening a school idol club of their own at their high school.";

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 26.3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10,
                  offset: Offset(-3, 5),
                )
              ]
            ),

            child: Padding(
              padding: EdgeInsets.all(15.6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.5),
                child: Image.asset('image/photo/you-chan_cute.png'),
              ),
            )
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                'You-chan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.6,
                  fontFamily: 'HarunoUmi',
                  color: Colors.lightBlue
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 35),
            child: Text(
              background,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.5,
                fontFamily: 'Tokumin',
              ),
            )
          ),

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(15.6),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 159, 232),
                    foregroundColor: Colors.white
                  ),

                  child: const Text(
                    'You-chan episode',
                    style: TextStyle(
                      fontSize: 17.2,
                      fontFamily: 'Tokumin',
                      color: Colors.white
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, aboutEpisodePerson) => AboutEpisodePerson(),
                        transitionsBuilder: (context, animation, aboutEpisodePerson, child) {
                          const begin = Offset(1.2, 0.0);
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
        ]
      )
    );
  }
}

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}

class PhotoAlbumPage extends StatelessWidget {
  const PhotoAlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}