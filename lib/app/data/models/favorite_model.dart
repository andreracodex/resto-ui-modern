class FavoriteModel {
  int id;
  String image;
  String name;
  String location;
  String description;
  int quantity;
  int score;
  double price;
  FavoriteModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.location,
      required this.quantity,
      required this.price,
      required this.score,
      required this.description});
}
