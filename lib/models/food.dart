class Food {
  final int foodId;
  final int price;
  final String size;
  final double rating;
  final String category;
  final String foodName;
  final String imageURL;
  bool isFavorited;
  final String decription;
  bool isSelected;

  Food(
      {required this.foodId,
        required this.price,
        required this.category,
        required this.foodName,
        required this.size,
        required this.rating,
        required this.imageURL,
        required this.isFavorited,
        required this.decription,
        required this.isSelected});

  //List of food items
  static List<Food> foodList = [
    Food(
        foodId: 0,
        price: 250,
        category: 'Trays',
        foodName: 'Lasagna',
        size: 'Small',
        rating: 4.5,
        imageURL: 'assets/lasagna.jpg',
        isFavorited: true,
        decription: 'ready to cook, for up to 3 individuals.',
        isSelected: false),
    Food(
        foodId: 1,
        price: 210,
        category: 'Mahashi',
        foodName: 'Waraa Enab',
        size: 'Medium',
        rating: 4.8,
        imageURL: 'assets/waraa_enab.jpg',
        isFavorited: false,
        decription: 'ready to cook, for 3 to 4 individuals.',
        isSelected: false),
    Food(
        foodId: 2,
        price: 180,
        category: 'Appetizers',
        foodName: 'Kobeba',
        size: 'Large',
        rating: 4.7,
        imageURL: 'assets/kobeba.jpg',
        isFavorited: false,
        decription: 'ready to fry, for up to 4 individuals.',
        isSelected: false),
    Food(
        foodId: 3,
        price: 300,
        category: 'Desserts',
        foodName: 'Strawberry Cake',
        size: 'Small',
        rating: 4.5,
        imageURL: 'assets/strawberries_cake.jpg',
        isFavorited: false,
        decription: 'can be stored for 4 days.',
        isSelected: false),
    Food(
        foodId: 4,
        price: 450,
        category: 'Meat',
        foodName: 'Kabab',
        size: 'Large',
        rating: 4.1,
        imageURL: 'assets/kabab.jpg',
        isFavorited: true,
        decription: 'ready to cook, for up to 3 individuals.',
        isSelected: false),
    Food(
        foodId: 5,
        price: 150,
        category: 'Salads',
        foodName: 'Green Salad',
        size: 'Medium',
        rating: 4.4,
        imageURL: 'assets/salad.jpg',
        isFavorited: false,
        decription: 'can be stored for 2 days.',
        isSelected: false),

  ];

  //Get the favorated items
  static List<Food> getFavoritedFood(){
    List<Food> _travelList = Food.foodList;
    return _travelList.where((element) => element.isFavorited == true).toList();
  }

  //Get the cart items
  static List<Food> addedToCartFood(){
    List<Food> _selectedFood = Food.foodList;
    return _selectedFood.where((element) => element.isSelected == true).toList();
  }
}