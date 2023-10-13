import 'package:flutter/material.dart';
import 'package:store/custom_widgets/counter.dart';
import 'package:store/custom_widgets/imageContainer.dart';
import 'package:store/custom_widgets/price_button.dart';
import 'package:store/custom_widgets/rating.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  Color backgroundColor = Colors.black38;
  int initailRate = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.white,
          size: 33,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border_rounded,
              size: 33,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 33,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.black38,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageContainer(),
            Text(
              "  Belgium Euro",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: "Audiowide",
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "  20/21 away by Adidas",
              style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: "Audiowide"),
            ),
            Row(
              children: [
                Rate(),
                Text(
                  "$initailRate",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(
                  width: 55,
                ),
                Counter()
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "  Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Audiowide',
                          fontWeight: FontWeight.bold),
                    ),
                    CustomTextSpan(text: "Matrial :", textSpan: "Polyester"),
                    CustomTextSpan(
                        text: "Shipping", textSpan: " in 5 to 6 days"),
                    CustomTextSpan(text: "Returns", textSpan: "within 20 days"),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                PriceButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget CustomTextSpan({required String text, required String textSpan}) {
  return Padding(
    padding: const EdgeInsets.only(top: 4, left: 8),
    child: Text.rich(
      TextSpan(
          text: text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Audiowide',
          ),
          children: [
            TextSpan(
              text: textSpan,
              style: TextStyle(color: Colors.grey, fontSize: 17,fontFamily: 'Audiowide'),
            )
          ]),
    ),
  );
}
