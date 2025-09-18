import 'package:flutter/material.dart';

class PersonDescription extends StatefulWidget {
  const PersonDescription({super.key});

  @override
  State<StatefulWidget> createState() => _PersonDescription();
}

class _PersonDescription extends State<PersonDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  padding: EdgeInsets.all(15.0),
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
                  padding: EdgeInsets.all(5.0),
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
                  padding: EdgeInsets.all(15.0),
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
                  child: Text("2nd Years"),
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
                  child: Text("April 17"),
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
                    "Astrological sign",
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
                  child: Text("Arise"),
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
                    "Blood Type",
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
                  child: Text("AB"),
                ),
              )
            ]
          ),
        ]
      ),
    );
  }
}