import 'package:about_watanabe_you/story/episode_story.dart';
import 'package:flutter/material.dart';

class EpisodePerson extends StatefulWidget {
  const EpisodePerson({super.key});

  @override
  State<EpisodePerson> createState() => _EpisodePerson();
}

class _EpisodePerson extends State<EpisodePerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'image/photo/you-chan_cute.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover
          ),

          Positioned(
            top: 40,
            left: 25,
            child: Card(
              color: Colors.black54,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  ),

                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.5),
                        topRight: Radius.circular(20.5)
                    )
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'You-chan Story',
                          style: TextStyle(
                              color: Color.fromARGB(255, 81, 171, 241),
                              fontSize: 25.3,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tokumin'
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: EpisodePersonList(),
                      ),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      )
    );
  }
}

class EpisodePersonList extends StatelessWidget {
  const EpisodePersonList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final EpisodeStory episodeStory = episodeStoryList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, episodePersonDetail) => EpisodePersonDetail(episodeStory: episodeStory),
                transitionsBuilder: (context, animation, episodePersonDetail, child) {
                  const begin = Offset(-1.2, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.bounceOut;

                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                }
              )
            );
          },

          child: Card(
            margin: EdgeInsets.only(bottom: 15.2),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.5)
            ),

            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.3),
                    child: Image.asset(episodeStory.episodePicture),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.3),

                    child: Text(
                      episodeStory.episodeTitle,
                      style: TextStyle(
                          fontSize: 17.5,
                          fontFamily: 'Tokumin',
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
    );
  }
}

class EpisodePersonDetail extends StatelessWidget {
  final EpisodeStory episodeStory;
  const EpisodePersonDetail({super.key, required this.episodeStory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.2),
                child: Center(
                  child: Text(
                    episodeStory.episodeTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.3
                    ),
                  ),
                ),
              ),

              Center(
                child: Image.asset(
                  'image/logo.png',
                  color: Colors.white,
                  height: 56,
                ),
              ),
            ],
          ),

          Positioned(
            top: 36.5,
            left: 10.6,
            child: Card(
              color: Colors.black54,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),

                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      )
    );
  }
}