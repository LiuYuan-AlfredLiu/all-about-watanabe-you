import 'package:about_watanabe_you/list/all_watanabe_you_photo_list.dart';
import 'package:flutter/material.dart';

class PhotoAlbumBar extends StatelessWidget {
  const PhotoAlbumBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: 40,
                  left: 25.3,
                  right: 25.3
              ),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(12.5, 21)
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
                    color: Colors.lightBlue,
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
      physics: const NeverScrollableScrollPhysics(),
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

class AllWatanabeYouPhotoDetail extends StatefulWidget {
  final AllWatanabeYouPhotoList photoList;
  const AllWatanabeYouPhotoDetail({super.key, required this.photoList});

  @override
  State<AllWatanabeYouPhotoDetail> createState() => _AllWatanabeYouPhotoDetail();
}

class _AllWatanabeYouPhotoDetail extends State<AllWatanabeYouPhotoDetail> {
  int indexArray = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 23.9),
            child: Text(
              "${widget.photoList.title} / ${widget.photoList.idolTitle}",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'HarunoUmi',
                  color: Color.fromARGB(255, 102, 192, 255),
                  fontSize: 20
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
                top: 40.5,
                left: 20,
                right: 20,
                bottom: 20
            ),

            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(11.8, 18.6),
                            color: Colors.black26
                        )
                      ]
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                        indexArray % 2 == 0 ? widget.photoList.photo : widget.photoList.idolPhoto
                    ),
                  ),
                ),

                Positioned(
                  bottom: 3,
                  right: 10,
                  child: IconButton(
                      icon: Icon(
                        Icons.change_circle,
                        color: Colors.white,
                        size: 30,
                      ),

                      onPressed: changesImage
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(
                top: 23.6,
                left: 20,
                right: 20,
                bottom: 17.3
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rank",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 17.6,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tokumin'
                        ),
                      ),

                      Text(
                        widget.photoList.rank,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.6,
                            fontFamily: 'Tokumin'
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Attribute",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 17.6,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tokumin'
                        ),
                      ),

                      Text(
                        widget.photoList.attribute,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.6,
                            fontFamily: 'Tokumin'
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Role",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 17.6,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Tokumin'
                        ),
                      ),

                      Text(
                        widget.photoList.role,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.6,
                            fontFamily: 'Tokumin'
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void changesImage() {
    setState(() {
      indexArray += 1;
    });
  }
}