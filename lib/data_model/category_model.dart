class Category {
  String image;
  String title;
  String routes;

  Category(this.image, this.title, this.routes);
}

List<Category> category = [
  Category('images/abc.png', 'Alphabet', '/details_screen'),
  Category('images/123.png', 'Number', '/details_screen'),
  Category('images/read.png', 'Reading', '/reading_page'),
  Category('images/shapes.png', 'Shapes', '/details_screen'),
];
