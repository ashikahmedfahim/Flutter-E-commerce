class Category {
  Category({required this.title, required this.imgUrl});
  String title;
  String imgUrl;
}

final List<Category> allCategories = [
  Category(title: 'Electronics', imgUrl: 'assets/images/catElectronics.png'),
  Category(title: 'Fashion', imgUrl: 'assets/images/catFashion.png'),
  Category(title: 'Health', imgUrl: 'assets/images/catHealth.png'),
  Category(title: 'Groceries', imgUrl: 'assets/images/catGroceries.png'),
  Category(title: 'Groceries', imgUrl: 'assets/images/catGroceries.png'),
  Category(title: 'Groceries', imgUrl: 'assets/images/catGroceries.png'),
];

class CardItem {
  CardItem(
      {required this.tag,
      required this.isFavourite,
      required this.imgUrl,
      required this.title,
      required this.price,
      required this.reviewStars,
      required this.reviewCount});
  String tag;
  bool isFavourite;
  String imgUrl;
  String title;
  double price;
  double reviewStars;
  int reviewCount;
}

final List<CardItem> latest = [
  CardItem(
    tag: 'New',
    isFavourite: true,
    imgUrl: 'assets/images/latestOne.png',
    title: 'Awesome T-shirt',
    price: 139.99,
    reviewStars: 5.0,
    reviewCount: 45,
  ),
  CardItem(
    tag: 'New',
    isFavourite: true,
    imgUrl: 'assets/images/latestTwo.png',
    title: 'Awesome T-shirt',
    price: 139.99,
    reviewStars: 5.0,
    reviewCount: 45,
  ),
];
