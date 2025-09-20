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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AllStarsPhotoAbout(personPhoto: photoList);
              }));
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
    return Scaffold();
  }
}