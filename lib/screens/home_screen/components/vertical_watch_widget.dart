import 'package:flutter/material.dart';

class VerticalWatchWidget extends StatelessWidget {
  final Color color;
  final String price;
  final String image;
  const VerticalWatchWidget({Key? key, required this.color, required this.price, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 3.3,
      width:  (width-16-20)/2.5,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height / 3.3,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset((image), width: (width-16-20)/2.5-20),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Text(
                price,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
