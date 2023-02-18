import 'package:electricvehiclecharging_app/pages/constants.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Jafis",style: TextStyle(color: dark,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/prof_pic.jpeg")
            )
          ],
        ),
      ),
    );
  }
}
