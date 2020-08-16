class Categoryy{
  final String id, title, image;
  final int numOfProducts;

  Categoryy({this.id, this.title, this.image, this.numOfProducts});

  // It creates an Category from JSON
  factory Categoryy.fromJson(Map<String, dynamic> json) {
    return Categoryy(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      numOfProducts: json["numOfProducts"],
    );
  }
}