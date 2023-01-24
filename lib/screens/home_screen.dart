import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebasequiz230123/consts/const.dart';
import 'package:flutterfirebasequiz230123/widgets/sidenav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: SideNav(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                              imgUrl1,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                      height: 180,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8)),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              child: Image.network(imgUrl1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              child: Image.network(
                                imgUrl1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            bottom: 3,
                            left: 3,
                            right: 3,
                            child: Container(
                              color: Colors.black38,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(35),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.lock,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Rs.53,000",
                                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Flutter Quiz",
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              child: Image.network(imgUrl1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              child: Image.network(
                                imgUrl1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            bottom: 3,
                            left: 3,
                            right: 3,
                            child: Container(
                              color: Colors.black38,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(35),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.lock,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Rs.53,000",
                                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Flutter Quiz",
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Stack(
                  children: [
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: Image.network(
                          imgUrl1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 3,
                      bottom: 3,
                      left: 3,
                      right: 3,
                      child: Container(
                        color: Colors.black38,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(35),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Icon(
                              Icons.lock,
                              size: 20,
                              color: Colors.white,
                            ),
                            Text(
                              "Rs.53,000",
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Flutter Quiz",
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
