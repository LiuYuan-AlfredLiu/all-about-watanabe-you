import 'package:about_watanabe_you/story/episode_story.dart';
import 'package:flutter/material.dart';

class AboutEpisodePerson extends StatefulWidget {
  const AboutEpisodePerson({super.key});

  @override
  State<StatefulWidget> createState() => _AboutEpisodePerson();
}

class _AboutEpisodePerson extends State<AboutEpisodePerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Image.asset('image/photo/you-chan_look.png'),

              Positioned(
                top: 30,
                left: 20,
                child: Card(
                  color: Colors.black45,
                  child: Padding(
                    padding: EdgeInsets.all(10.3),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),

                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
            ]
          ),

          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(15.6),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Watanabe You Story",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 25.3,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tokumin'
                      ),
                    ),
                  ),

                  EpisodePerson()
                ],
              )
            )
          )
        ]
      )
    );
  }
}

class EpisodePerson extends StatelessWidget {
  const EpisodePerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5.6,
        bottom: 10.2
      ),

      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final EpisodeStory episodeStory = episodeStoryList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, episodeStoryPerson) => EpisodeStoryPerson(episodeStory: episodeStory),
                    transitionsBuilder: (context, animation, aboutEpisodePerson, child) {
                      const begin = Offset(0.0, 1.3);
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

            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.2),
                      child: Image.asset(episodeStory.episodePicture),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 19.6,
                        left: 13.6
                      ),

                      child: Text(
                        episodeStory.episodeTitle,
                        style: TextStyle(
                          fontSize: 15.6,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },

        itemCount: episodeStoryList.length,
      ),
    );
  }
}

class EpisodeStoryPerson extends StatelessWidget {
  final EpisodeStory episodeStory;
  const EpisodeStoryPerson({super.key, required this.episodeStory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 81, 171, 241),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    episodeStory.episodeTitle,
                    style: TextStyle(
                      fontSize: 25.3,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),

                Center(
                  child: Image.asset(
                    'image/logo.png',
                    color: Colors.white,
                    width: 50,
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}