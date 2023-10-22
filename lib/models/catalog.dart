class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: 'iPhone 12 pro',
      desc: 'Apple iPhone 12th generation',
      price: 999,
      color: '#33505a',
      image:
          'https://helios-i.mashable.com/imagery/articles/01dI2KyWQvUu61tKdr6BPTf/hero-image.fill.size_1200x1200.v1614275818.jpg',
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
