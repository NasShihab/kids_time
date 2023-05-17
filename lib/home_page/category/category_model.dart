class Category {
  String image;
  String title;
  String routes;

  Category(this.image, this.title, this.routes);
}

List<Category> category = [
  Category('images/abc.png', 'Alphabet', '/alphabet'),
  Category('images/123.png', 'Number', '/number_page'),
  Category('images/read.png', 'Reading', '/alphabet'),
  Category('images/shapes.png', 'Shapes', '/alphabet'),
];
