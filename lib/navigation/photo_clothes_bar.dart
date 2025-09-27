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
            margin: EdgeInsets.only(top: 16.3),
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
          )
        ],
      )
    );
  }
}