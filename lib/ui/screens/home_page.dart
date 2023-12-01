
import 'package:demo_1/constants.dart';
import 'package:demo_1/models/food.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex=0;
    Size size=MediaQuery.of(context).size;

    List<Food> _foodList=Food.foodList;

    // food categories
    List<String>_foodTypes=[
      'Recommended',
      'Trays',
      'Meat',
      'Mahashi',
      'Appetizers',
      'Desserts',
      'Meals',
      'Poultry',
      'Salads',
    ];

    // toggle favorite button
    bool toggleIsFavorited(bool isFavorited){
      return !isFavorited;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    width: size.width*.9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search,color: Colors.black54.withOpacity(.6),),
                        const Expanded(child: TextField(
                          showCursor: false,
                          decoration: InputDecoration(
                            hintText: 'Search Food',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        )),
                        Icon(Icons.mic, color: Colors.black54.withOpacity(.6),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Constants.primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding : const EdgeInsets.symmetric(horizontal: 12),
              height :50.0,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: _foodTypes.length,
                  itemBuilder: (BuildContext context ,int index){
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex =index;
                      });
                    },
                    child : Text(
                      _foodTypes[index],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.w300,
                        color: selectedIndex == index ? Constants.primaryColor : Constants.blackColor,
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: size.height * 0.3,
              child: ListView.builder(
                itemCount: _foodList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      children: [
                        // Image Widget
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 60,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(_foodList[index].imageURL, width: double.infinity,fit: BoxFit.cover),
                              ),
                              // Favorite Icon
                              Positioned(
                                top: 10,
                                right: 20,
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    onPressed: () {
                                      // Toggle the favorite status or perform any action
                                      // when the favorite icon is pressed.
                                    },
                                    icon: Icon(
                                      _foodList[index].isFavorited
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                    ),
                                    color: Constants.primaryColor,
                                    iconSize: 30,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _foodList[index].category,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                _foodList[index].foodName,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 20,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'EGP' + _foodList[index].price.toString(),
                              style: TextStyle(
                                color: Constants.primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Constants.primaryColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16,bottom: 20,top: 20),
              child: const Text('Best Sellers',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: size.height*.5,
              child: ListView.builder(
                itemCount: _foodList.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Constants.primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 80.0,
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    margin: const EdgeInsets.only(bottom: 10,top: 10),
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                            ),
                            Positioned(
                              bottom: 5,
                                left: 0,
                                right: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(_foodList[index].imageURL),
                                ),),
                            Positioned(
                              bottom: 5,
                                left: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_foodList[index].category),
                                    Text(_foodList[index].foodName,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Constants.blackColor,
                                    ),),
                                  ],
                                ),),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(r'EGP'+_foodList[index].price.toString(), style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Constants.primaryColor,
                          ),),
                        )
                      ],
                    ),
                  );
              }),
            ),

          ],
        ),
      )
    );
  }
}
