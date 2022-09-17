import 'dart:ui';
import 'package:flutter/material.dart';

class Headphone{
  Headphone({
    this.headphonePrice = '',
    this.color = Colors.blue,
    this.image = "assets/Headphones/1.png",
  });

  String headphonePrice;
  String image;
  Color color;
}

var headphonesList = [
  Headphone(headphonePrice: "\$3000",color: Colors.grey,image: "assets/headphones/1.png"),
  Headphone(headphonePrice: "\$4000",color: Colors.blueAccent,image: "assets/headphones/1.png"),
  Headphone(headphonePrice: "\$5000",color: Colors.redAccent,image: "assets/headphones/1.png"),
];


