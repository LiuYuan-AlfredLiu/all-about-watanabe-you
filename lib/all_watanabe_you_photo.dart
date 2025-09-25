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
    );
  }
}