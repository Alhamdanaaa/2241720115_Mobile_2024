// class Item{
//   final String name;
//   final int price;

//   Item({required this.name, required this.price});
// }
class Item {
  final String name;
  final int price;
  final String imagePath;
  final int stock;
  final double rating;

  Item(this.name, this.price, this.imagePath, this.stock, this.rating);
}
