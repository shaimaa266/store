import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int initialValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if(initialValue>1){
                      initialValue--;
                    }});
                  },
                  icon: Icon(
                    Icons.remove_outlined,
                    color: Colors.white,
                  ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "$initialValue",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      initialValue++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}
