class ShapeModel {
  String title;
  String shape;

  ShapeModel({
    required this.title,
    required this.shape,
  });
}

List<ShapeModel> shapeData = [
  ShapeModel(title: "Circle", shape: "○"),
  ShapeModel(title: "Square", shape: "□"),
  ShapeModel(title: "Triangle", shape: "△"),
  ShapeModel(title: "Rectangle", shape: "▭"),
  ShapeModel(title: "Diamond/Rhombus", shape: "◊"),
  ShapeModel(title: "Heart", shape: "❤"),
  ShapeModel(title: "Star", shape: "★"),
  ShapeModel(title: "Crescent", shape: "☽"),
];
