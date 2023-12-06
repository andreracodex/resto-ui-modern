class FavoriteModel {
  int id;
  String image;
  String name;
  String location;
  String description;
  String telpon;
  int quantity;
  int score;
  double price;
  FavoriteModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.location,
      required this.quantity,
      required this.telpon,
      required this.price,
      required this.score,
      required this.description});
}
