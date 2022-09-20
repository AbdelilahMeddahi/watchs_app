import 'package:flutter/material.dart';

class HorizontalWatchWidget extends StatelessWidget {
  final Color color;
  final String image;
  const HorizontalWatchWidget({Key? key, required this.color, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: width-70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
              image),

        ),
      ),
    );
  }
}
