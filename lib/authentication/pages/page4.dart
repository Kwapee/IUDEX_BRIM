import 'dart:ui';
import 'package:final_project/authentication/pages/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'page2.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final List<Widget> carouselItems = [
    ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        color: const Color.fromARGB(239, 90, 125, 151),
        child: const Padding(
          padding: EdgeInsets.only(
            right: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '10',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Fault Fixes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Text(
                      'Average number of',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'faults connected a',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'month.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        color: const Color.fromARGB(239, 90, 125, 151),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'assets/images/engin.png',
                  width: 130,
                  height: 130,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Safety Tip',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'Give your engine',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'some attention',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'when you see the',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'check engine light',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        color: const Color.fromARGB(239, 90, 125, 151),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  'assets/images/tyre.jpg',
                  width: 130,
                  height: 130,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Safety Tip',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Text(
                      'Ensure that all',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'your tires are',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'pumped and ready',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      'to hit the road',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEdgeDragWidth: 25,
        drawer: const CustomDrawer(),
        body: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                backgroundColor: const Color.fromRGBO(2, 62, 107, 1),
                body: SizedBox(
                  width: 990,
                  height: 990,
                  child: Stack(
                    children: [
                      ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                          Color.fromRGBO(1, 15, 27, 0.404),
                          BlendMode.modulate,
                        ),
                        child: Image.asset(
                          'assets/images/car.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 1,
                          sigmaY: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 450, top: 30, bottom: 50),
                        child: IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.grey,
                            )),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 65, bottom: 55, left: 120),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 35,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 100, bottom: 70, left: 180),
                        child: Text(
                          "to",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(top: 130, bottom: 90, left: 140),
                        child: Text(
                          "IUDEX BRIM",
                          style: TextStyle(
                              color: Color.fromARGB(255, 231, 209, 131),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 200,
                                bottom: 90,
                              ),
                              child: Expanded(
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                    height: 180.0,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 0.8,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval:
                                        const Duration(seconds: 7),
                                    autoPlayAnimationDuration:
                                        const Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        // You can update the state here if needed
                                      });
                                    },
                                  ),
                                  items: carouselItems,
                                ),
                              ))),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 400,
                          bottom: 90,
                          left: 180,
                        ),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 400,
                          bottom: 90,
                          left: 195,
                        ),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 400,
                          bottom: 90,
                          left: 210,
                        ),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              Positioned(
                                top: 750,
                                left: 100,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 415, left: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(225, 1, 25, 48)
                                              .withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    width: 200,
                                    height: 300,
                                    child: const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 25),
                                            child: Icon(
                                              Icons.engineering,
                                              color: Colors.grey,
                                              size: 140,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 410, left: 150),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                minimumSize: const Size(1, 1),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page2()),
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  FontAwesomeIcons.ellipsisVertical,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 625, left: 30),
                            child: Text(
                              "Vechile Consulting",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))));
  }
}
