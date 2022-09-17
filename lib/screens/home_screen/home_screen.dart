import 'package:flutter/material.dart';
import 'package:watchs_app/models/headphone.dart';
import 'package:watchs_app/screens/home_screen/components/vertical_watch_widget.dart';

import '../../models/watch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu_rounded),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      elevation: 10,
                      backgroundColor: Colors.white,
                      mini: true,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "LUXURY ONLINE\nWATCH FOR SELL",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search Watch",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                        indicatorColor: Colors.transparent,

                        labelStyle:
                            TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelStyle:
                            TextStyle(fontWeight: FontWeight.bold),
                        tabs: [
                          Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "FEATURED",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: Text("WATCHS",style: TextStyle(fontSize: 16),),
                          ),
                          Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: Text("HEADPHONE",style: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: height / 3.3,
                      child: TabBarView(
                        children: [
                          ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: featuredWatchsList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    right: 10,
                                    left: index == 0 ? 16 : 0,
                                  ),
                                  child: VerticalWatchWidget(
                                    image: featuredWatchsList[index].image,
                                    color: featuredWatchsList[index].color,
                                    price: featuredWatchsList[index].watchPrice,
                                  ),
                                );
                              }),
                          ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: watchsList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    right: 10,
                                    left: index == 0 ? 16 : 0,
                                  ),
                                  child: VerticalWatchWidget(
                                    image: watchsList[index].image,
                                    color: watchsList[index].color,
                                    price: watchsList[index].watchPrice,
                                  ),
                                );
                              }),
                          ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: headphonesList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    right: 10,
                                    left: index == 0 ? 16 : 0,
                                  ),
                                  child: VerticalWatchWidget(
                                    image: headphonesList[index].image,
                                    color: headphonesList[index].color,
                                    price: headphonesList[index].headphonePrice,
                                  ),
                                );
                              }),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 150,color: Colors.red,),
              Container(height: 150,color: Colors.grey,),
              Container(height: 150,color: Colors.green,),
            ],
          ),
        ),
      ),
    );
  }
}
