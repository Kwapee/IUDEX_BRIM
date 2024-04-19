import 'dart:ui';

import 'package:final_project/authentication/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  // ignore: unused_field
  late String _email, _password, _phoneNumber, _address;

  final nameController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phonenumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final addressController = TextEditingController();
  // ignore: non_constant_identifier_names

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(2, 62, 107, 1),
      body: Stack(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Positioned(
                  top: 20,
                  right: 20,
                  child: Padding(
                    padding: const EdgeInsets.only( right: 450, top: 30, bottom: 50),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 231, 209, 131),),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(bottom: 100, right: 170, left: 40),
                  child: Text(
                    'NEW ACCOUNT',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      hintText: 'Enter your full name',
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey
                        )
                      ),
                      suffixIcon: Icon(
                        FontAwesomeIcons.solidFaceMeh,
                        size: 17,
                        color: Colors.blueGrey,
                      ),
                    ),
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
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 60,
                    right: 60,
                    bottom: 100,
                  ),
                  child: TextFormField(
                    controller: _phonenumberController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      hintText: 'Enter Phone Number', 
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey
                        )
                      ),
                      
                      suffixIcon: Icon(
                        FontAwesomeIcons.phone,
                        size: 17,
                        color: Colors.blueGrey,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty && value.length <= 9) {
                        return 'Provide a valid phone number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _phoneNumber = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: OutlinedButton.icon(onPressed:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Page2()),
                        );
                      }, icon: const Icon(Icons.arrow_forward, color: Color.fromARGB(255, 231, 209, 131),), label: Text("PROCEED", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.amberAccent),),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
