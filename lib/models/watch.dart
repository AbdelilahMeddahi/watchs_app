import 'dart:ui';
import 'package:flutter/material.dart';

class Watch{
  Watch({
    this.watchPrice = '',
    this.color = Colors.blue,
    this.image = "assets/watchs/1.png",
  });

  String watchPrice;
  String image;
  Color color;
}

var featuredWatchsList = [
  Watch(watchPrice: "\$2000",color: Colors.black,image: "assets/watchs/1.png"),
  Watch(watchPrice: "\$3000",color: Colors.grey,image: "assets/watchs/2.png"),
  Watch(watchPrice: "\$4000",color: Colors.blueAccent,image: "assets/watchs/3.png"),
  Watch(watchPrice: "\$5000",color: Colors.redAccent,image: "assets/watchs/4.png"),
];
var watchsList = [
  Watch(watchPrice: "\$3000",color: Colors.grey,image: "assets/watchs/2.png"),
  Watch(watchPrice: "\$2000",color: Colors.black,image: "assets/watchs/5.png"),
  Watch(watchPrice: "\$5000",color: Colors.redAccent,image: "assets/watchs/6.png"),
  Watch(watchPrice: "\$4000",color: Colors.blueAccent,image: "assets/watchs/3.png"),

];

