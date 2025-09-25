import 'package:about_watanabe_you/list/all_watanabe_you_photo_list.dart';
import 'package:flutter/material.dart';

class AllWatanabeYouPhoto extends StatefulWidget {
  const AllWatanabeYouPhoto({super.key});

  @override
  State<AllWatanabeYouPhoto> createState() => _AllWatanabeYouPhoto();
}

class _AllWatanabeYouPhoto extends State<AllWatanabeYouPhoto> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      shrinkWrap: true,
      children: allWatanabeYouList.map((photoList) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, allCharacterPhoto) => AllWatanabeYouPhotoDetail(photoList: photoList),
                transitionsBuilder: (context, animation, allCharacterPhoto, child) {
                  const curve = Curves.easeInOut;

                  return ScaleTransition(
                    scale: CurvedAnimation(
                      parent: animation,
                      curve: curve
                    ),

                    alignment: Alignment.center,
                    child: child,
                  );
                }
              )
            );
          },

          borderRadius: BorderRadius.circular(20),
          child: Card(
            color: Color.fromARGB(255, 235, 235, 235),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        photoList.photo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
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
    );
  }
}

class AllWatanabeYouPhotoDetail extends StatelessWidget {
  final AllWatanabeYouPhotoList photoList;
  const AllWatanabeYouPhotoDetail({super.key, required this.photoList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25.6),
            child: Text(
              "${photoList.title} / ${photoList.idolTitle}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19.7,
                fontFamily: 'HarunoUmi',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 102, 192, 255)
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10),
            child: Padding(
              padding: EdgeInsets.all(32.5),
              child: SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          photoList.photo,
                          fit: BoxFit.cover,
                        ),
                      )
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        left: 30,
                        bottom: 10
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          photoList.idolPhoto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}