import 'dart:ui';
import 'package:flutter/material.dart';

class Watch {
  Watch({
    this.watchPrice = '',
    this.watchBrand = '',
    this.watchWarranty = '',
    this.watchName = '',
    this.watchModel = '',
    this.watchDescription = '',
    this.color = Colors.blue,
    this.image = "assets/watches/7.png",
  });

  String watchPrice;
  String watchDescription;
  String watchBrand;
  String watchWarranty;
  String watchName;
  String watchModel;
  String image;
  Color color;
}

var featuredWatchsList = [
  Watch(
    watchPrice: "\$2000",
    color: Colors.black,
    image: "assets/watches/1.png",
  ),
  Watch(
      watchPrice: "\$3000", color: Colors.grey, image: "assets/watches/2.png"),
  Watch(
      watchPrice: "\$4000",
      color: Colors.blueAccent,
      image: "assets/watches/3.png"),
  Watch(
      watchPrice: "\$5000",
      color: Colors.redAccent,
      image: "assets/watches/4.png"),
];
var watchsList = [
  Watch(
    watchPrice: "\$3000",
    color: Colors.grey,
    image: "assets/watches/2.png",
    watchBrand: "Rolex",
    watchModel: "Date 40",
    watchWarranty: "2 Years",
    watchName: "MONDAINE WATCH",
    watchDescription: "sadasd",
  ),
  Watch(
    watchPrice: "\$3000",
    color: Colors.grey,
    image: "assets/watches/5.png",
    watchBrand: "Rolex",
    watchModel: "Date 40",
    watchWarranty: "2 Years",
    watchName: "MONDAINE WATCH",
    watchDescription: "sadasd",
  ),
  Watch(
    watchPrice: "\$3000",
    color: Colors.grey,
    image: "assets/watches/6.png",
    watchBrand: "Rolex",
    watchModel: "Date 40",
    watchWarranty: "2 Years",
    watchName: "MONDAINE WATCH",
    watchDescription: "sadasd",
  ),
  Watch(
    watchPrice: "\$3000",
    color: Colors.grey,
    image: "assets/watches/3.png",
    watchBrand: "Rolex",
    watchModel: "Date 40",
    watchWarranty: "2 Years",
    watchName: "MONDAINE WATCH",
    watchDescription: "sadasd",
  ),

];

var horizontalWatchsList = [
  Watch(
      watchPrice: "\$3000",
      color: Colors.grey,
      image: "assets/watches/horizontal/7.png"),
  Watch(
      watchPrice: "\$2000",
      color: Colors.black,
      image: "assets/watches/horizontal/8.png"),
  Watch(
      watchPrice: "\$5000",
      color: Colors.redAccent,
      image: "assets/watches/horizontal/9.png"),
];
