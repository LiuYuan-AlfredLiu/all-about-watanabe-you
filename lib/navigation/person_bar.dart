import 'package:flutter/material.dart';

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
                top: 40,
                left: 25.3,
                right: 25.3,
                bottom: 30
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(12.5, 21)
                )
              ],
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('image/photo/you-chan_happy.png'),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 23.5),
            child: Center(
              child: Text(
                "You-chan personal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: 'HarunoUmi',
                  color: Colors.lightBlue
                ),
              ),
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