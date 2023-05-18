class Category {
  String image;
  String title;
  String routes;

  Category(this.image, this.title, this.routes);
}

List<Category> category = [
  Category('images/abc.png', 'Alphabet', '/base_page'),
  Category('images/123.png', 'Number', '/base_page'),
  Category('images/read.png', 'Reading', '/reading_page'),
  Category('images/shapes.png', 'Shapes', '/base_page'),
];
