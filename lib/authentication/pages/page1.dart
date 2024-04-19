import 'dart:ui';
import 'package:final_project/authentication/pages/page2.dart';
import 'package:flutter/material.dart';

import 'page3.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  // declare and initizlize the page controller
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;

  final List<Widget> _pages = [const Page1(), const Page2(), const Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 60,
            child: Container(
              color: const Color.fromRGBO(8, 50, 83, 0.822),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: Stack(
                          children: [
                            if (_activePage == index)
                              const CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.white,
                              )
                            else
                              Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white),
                                  color: Colors.transparent,
                                ),
                              ),
                            if (_activePage == index)
                              Positioned(
                                top: 2,
                                left: 2,
                                right: 2,
                                bottom: 2,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(2, 62, 107, 1),
        body: Container(
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
                      sigmaX: 4,
                      sigmaY: 4,
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(
                        left: 60,
                        bottom: 80,
                        right: 20,
                        top: 170,
                      ),
                      child: Text(
                        "IUDEX BRIM",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 231, 209, 131),
                        ),
                      ),
                    ),
                  const Padding(
                      padding: EdgeInsets.only(left: 100, right: 30, top: 380),
                      child: Text(
                        "We understand your problem",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  const Padding(
                      padding: EdgeInsets.only(
                        left: 85,
                        right: 60,
                        top: 400,
                      ),
                      child: Text(
                        "LET US GET ",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 95,
                        right: 18,
                        top: 440,
                      ),
                      child: Text(
                        "YOU",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 180,
                        right: 18,
                        top: 440,
                      ),
                      child: Text(
                        "FIXED",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120,
                        right: 90,
                        top: 620,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 16, 81, 138),
                          minimumSize: const Size(30, 30),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Page2()),
                          );
                        },
                        child: const Text(
                          'TAP TO CONTINUE',
                          style: TextStyle(fontSize: 12,color: Colors.white54),
                        ),
                      ),
                    ), 
                ],
              ),
            )));
  }
}

      