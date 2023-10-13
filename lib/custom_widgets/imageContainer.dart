import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  @override
  _ImageContainerState createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  PageController pageController = PageController(initialPage: 0);

  List<String> imagePaths = [
    'assets/images/small_shirt.png',
    'assets/images/ml_shirt.png',
    'assets/images/large_shirt.png',
    'assets/images/xl_shirt.png',
    'assets/images/2xl_shirt.png',
  ];

  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16),
            child: Container(
              width: 280,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(20),
              ),
              child: PageView(
                controller: pageController,
                children: imagePaths
                    .map((path) => Image.asset(path, width: 50, height: 60))
                    .toList(),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildMaterialButton(text: "S", index: 0),
                buildMaterialButton(text: "M", index: 1),
                buildMaterialButton(text: "L", index: 2),
                buildMaterialButton(text: "XL", index: 3),
                buildMaterialButton(text: "2XL", index: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMaterialButton({required String text, required int index}) {
    final isSelected = selectedButtonIndex == index;
    final buttonColor = isSelected ? Colors.red : Colors.white24;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
        ),
        child: MaterialButton(
          onPressed: () {
            setState(() {
              selectedButtonIndex = index;
            });
            pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
