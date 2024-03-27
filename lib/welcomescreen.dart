import 'package:flutter/material.dart';
import 'package:tawsila/homescreen.dart';




class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 83, 65, 203),
              Color(0xff281537),
            ])),
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Image(
                image: AssetImage('assets/massafa_logo-removebg-preview.png')),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Welcome Back',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Homecreen()));
            },
            child: Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: const Center(
                child: Text(
                  'START',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => RegScreen()));
            },
            child: Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: const Center(
                child: Text(
                  'ABOUT',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          const Spacer(),
          const Text(
            ' Social Media',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ), //
          const SizedBox(
            height: 12,
          ),
          const Image(image: AssetImage('assets/social-removebg-preview.png'))
        ]),
      ),
    );
  }
}