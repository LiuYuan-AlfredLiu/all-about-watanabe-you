import 'package:about_watanabe_you/list/personal_photo.dart';
import 'package:flutter/material.dart';

class AllStarsPhoto extends StatelessWidget {
  const AllStarsPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 27.5,
        left: 5.0,
        right: 5.0,
        bottom: 10.5
      ),

      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        shrinkWrap: true,
        children: personaPhotoList.map((photoList) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, episodePhotoAbout) => AllStarsPhotoAbout(personPhoto: photoList),
                  transitionsBuilder: (context, animation, episodePhotoAbout, child) {
                    const begin = Offset(1.5, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.bounceInOut;

                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },

                  transitionDuration: Duration(milliseconds: 1500)
                )
              );
            },

            borderRadius: BorderRadius.circular(20.5),
            child: Card(
              color: Color.fromARGB(255, 235, 235, 235),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.5),
                        topRight: Radius.circular(20.5)
                      ),

                      child: Image.asset(
                        photoList.photo,
                        fit: BoxFit.cover,
                      ),
                    )
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.6),
                    child: Text(
                      photoList.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tokumin',
                        fontSize: 16.3
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      )
    );
  }
}

class AllStarsPhotoAbout extends StatefulWidget {
  final PersonPhoto personPhoto;
  const AllStarsPhotoAbout({super.key, required this.personPhoto});

  @override
  State<StatefulWidget> createState() => _AllStarsPhotoAbout();
}

class _AllStarsPhotoAbout extends State<AllStarsPhotoAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "${widget.personPhoto.title} / ${widget.personPhoto.idolTitle}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.5,
                  color: Colors.lightBlue
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 23.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(10, 12),
                          blurRadius: 10
                        )
                      ]
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.5),
                      child: Image.asset(
                        widget.personPhoto.photo,
                        fit: BoxFit.cover,
                        width: 180,
                      ),
                    )
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(10, 12),
                          blurRadius: 10
                        )
                      ]
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.5),
                      child: Image.asset(
                        widget.personPhoto.idolPhoto,
                        fit: BoxFit.cover,
                        width: 180,
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20.5),
              child: Table(
                border: TableBorder.all(
                  color: Colors.lightBlue,
                  width: 2
                ),

                defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(166, 3, 169, 244)
                    ),

                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(20.5),
                          child: Text(
                            "Description Name",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.5,
                              fontFamily: 'Tokumin',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),

                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(20.5),
                          child: Text(
                            "You-chan Description"
                          ),
                        ),
                      )
                    ]
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}