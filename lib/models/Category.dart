class Categories {
  final int categoryId;
  final String categoryName;
  final String imageURL;

  Categories(
      {required this.categoryId,
        required this.categoryName,
        required this.imageURL});

  //List of category items
  static List<Categories> categoryList = [
    Categories(
        categoryId: 0,
        categoryName:'Meat',
        imageURL: 'assets/meat.png'
      ),
    Categories(
      categoryId: 1,
      categoryName:'Poultry',
      imageURL: 'assets/chicken.png'
    ),
    Categories(
      categoryId: 2,
      categoryName:'Trays',
      imageURL: 'assets/trays.png'
    ),
    Categories(
      categoryId: 3,
      categoryName:'Mahashi',
      imageURL: 'assets/mahashi.png'
    ),
    Categories(
      categoryId: 4,
      categoryName:'Appetizers',
      imageURL: 'assets/appetizer.png'
    ),
    Categories(
        categoryId: 5,
        categoryName:'Salads',
        imageURL: 'assets/.png'
    ),
    Categories(
        categoryId: 6,
        categoryName:'Desserts',
        imageURL: 'assets/Desserts.png'
    ),
    Categories(
      categoryId: 7,
      categoryName:'Catering',
      imageURL: 'assets/catering.png'
    ),

  ];
}