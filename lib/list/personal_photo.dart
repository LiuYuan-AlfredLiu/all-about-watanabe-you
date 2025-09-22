class PersonPhoto {
  String photo;
  String idolPhoto;
  String title;
  String idolTitle;
  String rank;
  String attribute;
  String role;

  PersonPhoto({
    required this.photo,
    required this.idolPhoto,
    required this.title,
    required this.idolTitle,
    required this.rank,
    required this.attribute,
    required this.role
});
}

var personaPhotoList = [
  PersonPhoto(
    photo: "image/love_live_sif_all_stars/afterschool_holiday.png",
    idolPhoto: "image/love_live_sif_all_stars/happiness_cheerleader.png",
    title: "Afterschool Holiday",
    idolTitle: "Happiness Cheerleader",
    rank: "Super rare",
    attribute: "Pure",
    role: "SP"
  ),

  PersonPhoto(
    photo: "image/love_live_sif_all_stars/aquarium_date.png",
    idolPhoto: "image/love_live_sif_all_stars/rabbit_in_wonderland.png",
    title: "Aquarium Date",
    idolTitle: "Rabbit in Wonderland",
    rank: "Ultra rare",
    attribute: "Cool",
    role: "Guard"
  )
];