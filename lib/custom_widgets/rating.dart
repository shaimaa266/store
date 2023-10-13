import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
              size: 32,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 32,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 32,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 32,
            ),
            Icon(
              Icons.star_border_purple500_sharp,
              color: Colors.grey,
              size: 32,
            )
          ],
        ),
      ),
    );
  }
}
