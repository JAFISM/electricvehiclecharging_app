import 'dart:async';

import 'package:electricvehiclecharging_app/pages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000 ));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
   backgroundColor: green,
       body: AnimatedBuilder(
         animation: _controller,
         builder: (context, child) {
           return  Center(
             //heightFactor: 1,
             child: Transform.scale(
               scale: _animation.value,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image.asset("assets/images/Ev_Logo.png",scale: 1.5,),
                   //Text("Connect your Vehicle",style: TextStyle(color: black10,fontWeight: FontWeight.bold,fontSize: 20),)
                 ],
               ),
             ),
           );
         },
       ),
   );
  }
}