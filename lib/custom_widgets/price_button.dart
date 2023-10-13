import 'package:flutter/material.dart';

class PriceButton extends StatelessWidget {
  PriceButton({Key? key}) : super(key: key);
  double price = 89;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 110,
        height: 120,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              side: BorderSide(width: 3, color: Colors.white10),
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(20)
              )
            ),
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  "$price \$",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
