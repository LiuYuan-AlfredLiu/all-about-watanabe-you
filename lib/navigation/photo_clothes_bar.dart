import 'package:about_watanabe_you/list/character_clothes_list.dart';
import 'package:flutter/material.dart';

class PhotoClothesBar extends StatelessWidget {
  const PhotoClothesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 40,
              left: 25.3,
              right: 25.3
            ),

            decoration: BoxDecoration(
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
              child: Image.asset("image/photo/you-chan_costume.png"),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 40.3),
            child: Text(
              "All You-chan Clothes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'HarunoUmi',
                fontSize: 21.5,
                color: Colors.lightBlue
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 21.6),
            child: CharacterClothesDetail(),
          )
        ],
      )
    );
  }
}

class CharacterClothesDetail extends StatefulWidget {
  const CharacterClothesDetail({super.key});

  @override
  State<CharacterClothesDetail> createState() => _CharacterClothesDetail();
}

class _CharacterClothesDetail extends State<CharacterClothesDetail> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: characterClothesList.map((clothesList) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, characterClothesImage) => CharacterClothesImage(characterList: clothesList),
                transitionsBuilder: (context, animation, characterClothesImage, child) {
                  final scaleAnimation = Tween<double>(
                    begin: 0.0,
                    end: 1
                  ).animate(
                    CurvedAnimation(
                      parent: animation,
                      curve: Curves.elasticInOut
                    )
                  );

                  return ScaleTransition(
                    scale: scaleAnimation,
                    child: child,
                  );
                },
                transitionDuration: const Duration(milliseconds: 1000)
              )
            );
          },

          child: Card(
            color: Color.fromARGB(255, 235, 235, 235),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    clothesList.image,
                    fit: BoxFit.contain
                  )
                ),

                Padding(
                  padding: EdgeInsets.all(10.3),
                  child: Text(
                    clothesList.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Tokumin"
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

class CharacterClothesImage extends StatelessWidget {
  final CharacterClothes characterList;
  const CharacterClothesImage({super.key, required this.characterList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(characterList.name),
      ),

      body: Image.asset(characterList.image),
    );
  }
}