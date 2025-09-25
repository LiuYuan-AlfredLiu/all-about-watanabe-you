import 'package:about_watanabe_you/all_episode_season.dart';
import 'package:about_watanabe_you/all_watanabe_you_photo.dart';
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

  final String allParagraph = "You-chan is an energetic, tomboyish and positive girl with "
      "an outlook of focusing on her goals, which can sometimes cause her to take "
      "action without thinking things over first. Her positive attitude also makes "
      "her one of the more charismatic members of the group. Since she would like "
      "to have her father's job as the captain of a ferry, she tends to salute "
      "when she says her catchphrase \"Yousoro!\", often in the place of \"hello\" "
      "and \"good-bye\".\n\n"
      "You-chan loves the friendship she has forged with Chika-chan over the years, "
      "so she slowly grew jealous of Riko-chan's friendship with Chika-chan when "
      "she invites her to join Aqours. This is hinted in Season 1 Episode 10, "
      "and is expanded upon in Season 1 Episode 11 when the members of Aqours "
      "find out the group originally consisted of her and Chika-chan, rather than "
      "Chika-chan and Riko-chan. After Mari-chan confronts her on it, You-chan "
      "expresses her feelings to her best friend, and stops being jealous of "
      "Riko-chan.";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
          ),

          Container(
            margin: EdgeInsets.only(
              top: 40.6,
              left: 10,
              right: 10,
              bottom: 20
            ),

            child: Table(
              border: TableBorder.all(color: Color.fromARGB(176, 81, 171, 241)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 102, 192, 255)
                  ),

                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Description Name",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "You-chan Description",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Subunit",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.asset(
                          "image/CYaRon.png",
                          height: 50,
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "School",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Tokumin"
                          )
                        )
                      )
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Uranohoshi Girl's High School",
                          style: TextStyle(
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "School year",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Tokumin"
                          )
                        )
                      )
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "2nd Years",
                          style: TextStyle(
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Birthday",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Tokumin"
                          ),
                        ),
                      ),
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "April 17",
                          style: TextStyle(
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Blood Type",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent,
                            fontFamily: "Tokumin"
                          ),
                        ),
                      ),
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "AB",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Tokumin"
                          ),
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Height",
                          style: TextStyle(
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent
                          ),
                        ),
                      ),
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "1m 57cm",
                          style: TextStyle(
                            fontFamily: "Tokumin",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "Skill",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tokumin',
                            color: Colors.lightBlueAccent
                          ),
                        ),
                      ),
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "High Driving",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Tokumin'
                          ),
                        ),
                      ),
                    )
                  ]
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Hobbies',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontFamily: 'Tokumin',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Weight Training, Running, Uniforms',
                          style: TextStyle(
                            fontFamily: 'Tokumin',
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    )
                  ]
                )
              ],
            )
          ),

          Container(
            margin: EdgeInsets.only(
              top: 36.8,
              right: 20.6,
              left: 20.6,
              bottom: 45.9
            ),

            child: Text(
              allParagraph,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Tokumin',
                fontSize: 18.3,
                fontWeight: FontWeight.w500
              ),
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 40.6,
              left: 25.3,
              right: 25.3
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(15, 16.5)
                )
              ]
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("image/photo/you-chan_look.png"),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 36.9,
              right: 20,
              left: 20,
              bottom: 45.6
            ),

            child: Text(
              "All You-chan Photo",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 102, 192, 255),
                fontWeight: FontWeight.bold,
                fontSize: 25.2,
                fontFamily: 'Tokumin'
              ),
            ),
          ),

          AllWatanabeYouPhoto()
        ]
      ),
    );
  }
}

class PhotoClothesBar extends StatelessWidget {
  const PhotoClothesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}