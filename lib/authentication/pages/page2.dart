import 'dart:ui';
import 'package:final_project/authentication/pages/page3.dart';
import 'package:provider/provider.dart';
import 'package:final_project/authentication/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../providers/auth_provider.dart';
import 'page4.dart';
class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
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

class _Page2State extends State<Page2> {
  // ignore: unused_field
  late String _email, _password;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _Key = GlobalKey<FormState>();

  bool validate() {
    if (_Key.currentState!.validate()) {
      _Key.currentState!.save();
      return true;
    } else {
      return false;
    }
  }

  Future<void> loginUser() async {
    try {
      if (validate()) {
        await Provider.of<AuthProvider>(context, listen: false).loginUser(
          _emailController.text,
          _passwordController.text,
        );
        if (mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const Page4(),
            ),
          );
        }
      }
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            err.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(2, 62, 107, 1),
          body: Center(
        key: _Key,
        child: Container(
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
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: 37, bottom: 80, right: 55, top: 170),
                  child: Text(
                    "IUDEX BRIM",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 231, 209, 131)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey
                        )
                      ),
                      suffixIcon: Icon(
                        FontAwesomeIcons.envelope,
                        size: 17,
                        color: Colors.blueGrey,
                      ),
                    ),
                    validator: (value) {
                      if (!value!.contains('@')) {
                        return 'Provide a valid email';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                  
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 60,
                    right: 60,
                  ),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      hintText: 'Enter Password', 
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey
                        )
                      ),
                      
                      suffixIcon: Icon(
                        FontAwesomeIcons.eyeSlash,
                        size: 17,
                        color: Colors.blueGrey,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty && value.length <= 9) {
                        return 'Provide a valid password';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _password = value!;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 65,
                    bottom: 20,
                    right: 60,
                    top: 85,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 110, 167, 218),
                          minimumSize: const Size(150, 38),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page4()),
                      );
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 65,
                    right: 60,
                    top: 35,
                  ),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 10, color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 65,
                    bottom: 10,
                    right: 60,
                  ),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Page3()),
                      );
                    },
                    child: const Text(
                      'Create an Account',
                      style: TextStyle(fontSize: 10, color: Colors.blueGrey),
                    ),
                  ),
                ),
              ],
            ),
          ),
            ]
        ),
      )),
    ));
  }
}
