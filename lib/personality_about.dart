import 'package:flutter/material.dart';

class PersonalityAbout extends StatelessWidget {
  const PersonalityAbout({super.key});

  @override
  Widget build(BuildContext context) {
    String paragraph = "You-chan is an energetic, tomboyish and positive girl with "
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

    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 25.5,
                left: 20.1,
                right: 20.1
            ),

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(10, 18.5)
                  )
                ]
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.5),
              child: Image.asset('image/photo/you-chan_look.png'),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
                top: 50.0,
                left: 10.5,
                right: 10.5,
                bottom: 20.5
            ),

            child: Table(
              border: TableBorder.all(color: Color.fromARGB(89, 81, 171, 241)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 81, 171, 241)
                    ),

                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.2),
                          child: Text(
                            "Description Name",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.2),
                          child: Text(
                            "You-chan Description",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.2),
                          child: Text(
                            "Subunit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.2),
                          child: Image.asset(
                            'image/CYaRon.png',
                            height: 50,
                          ),
                        ),
                      )
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.2),
                          child: Text(
                            "School",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("Uranohoshi Girls' High School"),
                        ),
                      ),
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "School Years",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "2nd Years",
                          ),
                        ),
                      )
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Birthday",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                              "April 17"
                          ),
                        ),
                      )
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Astrological Sign',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text('Arise')
                        ),
                      )
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Blood Type',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('AB'),
                        ),
                      )
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Height",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("1m 57cm")
                        ),
                      ),
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Skill",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tokumin'
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text("High Diving"),
                        ),
                      )
                    ]
                ),

                TableRow(
                    children: <Widget>[
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Hobbies',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Tokumin"
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Weight Training, Running, Uniforms',
                          ),
                        ),
                      )
                    ]
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: 25.5,
              bottom: 18.6,
              left: 20.0,
              right: 20.0
            ),

            child: Text(
              paragraph,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.6,
                fontFamily: 'HarunoUmi'
              ),
            ),
          )
        ]
    );
  }
}