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

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10.3),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final EpisodeStory episodeStory = episodeStoryList[index];
                        return InkWell();
                      },
                    ),
                  )
                ],
              )
            )
          )
        ]
      )
    );
  }
}

class StoryDescription extends StatelessWidget {
  final EpisodeStory episodeStory;
  const StoryDescription({super.key, required this.episodeStory});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}