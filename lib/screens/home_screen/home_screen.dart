import 'package:flutter/material.dart';
import 'package:watchs_app/models/headphone.dart';
import 'package:watchs_app/screens/home_screen/components/horizental_watch_widget.dart';
import 'package:watchs_app/screens/home_screen/components/vertical_watch_widget.dart';
import 'package:watchs_app/screens/product_details/product_details_screen.dart';

import '../../models/watch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                primary: true,
                floating: true,
                pinned: true,
                snap: false,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.menu_rounded),
                            FloatingActionButton(
                              onPressed: () {},
                              elevation: 0.5,
                              backgroundColor: Colors.white,
                              mini: true,
                              child: const Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "LUXURY ONLINE\nWATCH FOR SELL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: AppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 0,
                  title: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 19,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
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
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                          child: TabBar(
                            unselectedLabelColor: Colors.grey,
                            labelColor: Colors.black,
                            indicatorColor: Colors.transparent,
                            labelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                            unselectedLabelStyle:
                            const TextStyle(fontWeight: FontWeight.bold),
                            tabs: [
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: const Text(
                                  "FEATURED",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: const Text(
                                  "WATCHS",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: const Text(
                                  "HEADPHONE",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: height / 3.1,
                          child: TabBarView(
                            children: [
                              ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: featuredWatchsList.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(
                                        right: 10,
                                        left: index == 0 ? 16 : 0,
                                      ),
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ProductDetailsScreen(watch:featuredWatchsList[index] ,)),
                                          );
                                        },
                                        child: VerticalWatchWidget(
                                          image:
                                          featuredWatchsList[index].image,
                                          color:
                                          featuredWatchsList[index].color,
                                          price: featuredWatchsList[index]
                                              .watchPrice,
                                        ),
                                      ),
                                    );
                                  }),
                              ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: watchsList.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ProductDetailsScreen(watch:watchsList[index] ,)),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          right: 10,
                                          left: index == 0 ? 16 : 0,
                                        ),
                                        child: VerticalWatchWidget(
                                          image: watchsList[index].image,
                                          color: watchsList[index].color,
                                          price: watchsList[index].watchPrice,
                                        ),
                                      ),
                                    );
                                  }),
                              ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: headphonesList.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => ProductDetailsScreen(watch:watchsList[index] ,)),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          right: 10,
                                          left: index == 0 ? 16 : 0,
                                        ),
                                        child: VerticalWatchWidget(
                                          image: headphonesList[index].image,
                                          color: headphonesList[index].color,
                                          price: headphonesList[index]
                                              .headphonePrice,
                                        ),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,

                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BEST SELLING",style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 30,),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: horizontalWatchsList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                  right: 25,
                                ),
                                child: HorizontalWatchWidget(
                                  color: horizontalWatchsList[index].color,
                                  image: horizontalWatchsList[index].image,
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                )
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,

                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0,top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ON SALE",style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 30,),
                      SizedBox(
                        height: height / 3.1,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
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
                                  price: headphonesList[index]
                                      .headphonePrice,
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
