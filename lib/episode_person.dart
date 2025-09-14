import 'package:about_watanabe_you/story/episode_story.dart';
import 'package:flutter/material.dart';

class AboutEpisodePerson extends StatefulWidget {
  const AboutEpisodePerson({super.key});

  @override
  State<AboutEpisodePerson> createState() => _AboutEpisodePerson();
}

class _AboutEpisodePerson extends State<AboutEpisodePerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/photo/you-chan_cute.png'),
            fit: BoxFit.cover,
            alignment: Alignment.center
          )
        ),

        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },

                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(100)
                  ),

                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  )
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.3),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(0, -5)
                    )
                  ]
                ),

                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            'You-chan Story',
                            style: TextStyle(
                              fontSize: 23.5,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(15.3),
                        child: Episode1(),
                      )
                    ],
                  ),
                )
              )
            )
          ],
        ),
      )
    );
  }
}

class Episode1 extends StatelessWidget {
  const Episode1({super.key});

  @override
  Widget build(BuildContext context) {
    EpisodeStory episode = episodeStoryList[0];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          episode.episode,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 23.5,
            fontWeight: FontWeight.bold
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            episode.textEpisode,
            style: TextStyle(
                fontSize: 16.3
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 159, 232)
              ),

              child: Text(
                'Next Episode 2',
                style: TextStyle(
                  fontSize: 17.5,
                  color: Colors.white
                ),
              ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Episode2())
                );
              },
            )
          ],
        )
      ],
    );
  }
}

class Episode2 extends StatelessWidget {
  const Episode2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}