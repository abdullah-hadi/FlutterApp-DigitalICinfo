class Country {
  String name, imagelink, table, info;
  int input;
  int number;

  Country({
    required this.name,
    required this.number,
    required this.input,
    this.imagelink =
        "https://beyondma.com/wp-content/uploads/2017/04/default-image-620x600.jpg",
    this.table =
        "https://beyondma.com/wp-content/uploads/2017/04/default-image-620x600.jpg",
    this.info = "no info given",
  });
}
