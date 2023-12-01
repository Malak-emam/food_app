import 'package:demo_1/constants.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final List<String> imageUrls = [
    'assets/meat.png',
    'assets/chicken.png',
    'assets/mahashi.png',
    'assets/trays.png',
    'assets/appetizer.png',
    'assets/Desserts.png',
    'assets/salad_category.png',
    'assets/catering.png',
  ];
  final List<String> titles = [
    'Meat',
    'Poultry',
    'Mahashi',
    'Trays',
    'Appetizers',
    'Desserts',
    'Salads',
    'Walima',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(imageUrls.length, (index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                height: 150,
                decoration: BoxDecoration(
                  color: Constants.primaryColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    imageUrls[index],
                    fit: BoxFit.contain,
                    width: 250,
                    height: 50,
                  ),
                ),
              ),
              Text(
                titles[index],
                style: TextStyle(fontSize: 16),
              ),
            ],
          );
        }),
      ),
    );
  }
}