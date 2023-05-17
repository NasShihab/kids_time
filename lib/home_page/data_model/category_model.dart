class Category {
  String image;
  String title;
  String routes;

  Category(this.image, this.title, this.routes);
}

List<Category> category = [
  Category('images/abc.png', 'Alphabet', '/number_page'),
  Category('images/123.png', 'Number', '/number_page'),
  Category('images/read.png', 'Reading', '/number_page'),
  Category('images/shapes.png', 'Shapes', '/number_page'),
];
