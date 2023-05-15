class Category {
  String image;
  String title;

  Category(
    this.image,
    this.title,
  );
}

List<Category> category = [
  Category('images/abc.png', 'Alphabet'),
  Category('images/123.png', 'Number'),
  Category('images/read.png', 'Reading'),
  Category('images/shapes.png', 'Shapes'),
];
