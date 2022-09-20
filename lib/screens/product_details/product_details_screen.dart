import 'package:flutter/material.dart';
import 'package:watchs_app/models/watch.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Watch watch;
  const ProductDetailsScreen({Key? key, required this.watch}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double _padding = 32;
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(
        backgroundColor: const Color(0xFF212121),
        elevation: 0,
        flexibleSpace: FlexibleSpaceBar(
          background: SafeArea(
            child: Padding(
              padding:  EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  SizedBox(width: 10,),
                  Text(widget.watch.watchName,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),textAlign: TextAlign.center),
                  FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    backgroundColor: Colors.white,
                    mini: true,
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.all(_padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 400,
                      width: width / 2,
                      decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.watch.image),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      width: width / 2 - _padding*2,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const Text(
                                    "FROM",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    widget.watch.watchPrice,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const Text(
                                    "BRAND",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    widget.watch.watchBrand,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const Text(
                                    "WARRANTY",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    widget.watch.watchWarranty,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const Text(
                                    "MODEL",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    widget.watch.watchModel,
                                    style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Case Size 41mm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  widget.watch.watchDescription,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 110,
        child: Center(
          child: Container(
            height: 50,
            width: width - _padding*2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: const Center(
                child: Text(
              "ORDER NOW",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 17),
            )),
          ),
        ),
      ),
    );
  }
}
