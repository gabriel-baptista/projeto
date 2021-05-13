class Food {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.discount,
      this.ratings});
}

final foods = [
  Food(
    id: "1",
    name: "Pizza",
    imagePath: "img/pizza.jpg",
    category: "1",
    price: 50.0,
    discount: 10.0,
    ratings: 99.0,
  ),
  Food(
    id: "2",
    name: "Hamburguer",
    imagePath: "img/lanche.jpg",
    category: "2",
    price: 22.0,
    discount: 12.0,
    ratings: 99.0,
  ),
];
