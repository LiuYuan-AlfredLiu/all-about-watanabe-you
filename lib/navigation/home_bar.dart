import 'package:about_watanabe_you/list/all_episode_season_list.dart';
import 'package:flutter/material.dart';

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

class AllEpisodeSeason extends StatefulWidget {
  const AllEpisodeSeason({super.key});

  @override
  State<StatefulWidget> createState() => _AllEpisodeSeason();
}

class _AllEpisodeSeason extends State<AllEpisodeSeason> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "image/photo/you-chan_cute.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Positioned(
            top: 46.5,
            left: 20,
            child: Card(
              color: Colors.black38,
              child: Padding(
                  padding: EdgeInsets.all(12.5),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 32.5,
                    ),

                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)
                      )
                  ),

                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Center(
                            child: Text(
                              'You-chan story First Season',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 192, 255),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'HarunoUmi',
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              final AllEpisodeSeasonFirst seasonFirst = allEpisodeSeasonFirstList[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: (context, animation, episodeSeasonFirst) => EpisodeSeasonDetail(seasonFirst: seasonFirst),
                                          transitionsBuilder: (context, animation, episodeSeasonFirst, child) {
                                            const begin = Offset(-1.2, 0.0);
                                            const end = Offset.zero;
                                            const curve = Curves.bounceOut;

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

                                child: Card(
                                  margin: EdgeInsets.only(
                                      top: 10,
                                      bottom: 12.6,
                                      right: 20,
                                      left: 20
                                  ),

                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                                  child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(7),
                                            child: Image.asset(seasonFirst.episodePicture),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 2,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 15.2),
                                            child: Text(
                                              seasonFirst.episodeTitle,
                                              style: TextStyle(
                                                  fontSize: 17.6,
                                                  color: Color.fromARGB(255, 102, 192, 255),
                                                  fontFamily: 'Tokumin',
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                        )
                                      ]
                                  ),
                                ),
                              );
                            },

                            itemCount: allEpisodeSeasonFirstList.length,
                          ),
                        )
                      ]
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EpisodeSeasonDetail extends StatelessWidget {
  final AllEpisodeSeasonFirst seasonFirst;
  const EpisodeSeasonDetail({super.key, required this.seasonFirst});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 102, 192, 255),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 120,
                    left: 20,
                    right: 20
                ),

                child: Text(
                  seasonFirst.episodeTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "HarunoUmi",
                      fontSize: 28.6
                  ),
                ),
              ),

              Center(
                child: Image.asset(
                  'image/logo.png',
                  color: Colors.white,
                  height: 60,
                ),
              )
            ],
          ),

          Positioned(
            top: 46.5,
            left: 20,
            child: Card(
              color: Colors.black38,
              child: Padding(
                padding: EdgeInsets.all(12.5),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 32.5,
                  ),

                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 583,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.6),
                      topRight: Radius.circular(20.6)
                  )
              ),
              padding: EdgeInsets.all(10),

              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 30,
                          left: 20,
                          right: 20
                      ),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                offset: Offset(15.4, 20)
                            )
                          ]
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(seasonFirst.episodePicture),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                          top: 32.6,
                          left: 10,
                          right: 10,
                          bottom: 20.1
                      ),

                      child: Text(
                        seasonFirst.episodeDescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.3,
                            fontFamily: 'Tokumin',
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}