import 'dart:ui';

import 'package:flutter/material.dart';

class VehicleModel{
  VehicleModel(
      {required this.name,
        required this.model,
        required this.energy,
        required this.duration,
        required this.imagePath,
         this.bgcolor=Colors.tealAccent,
       required this.viewSelected}
      );
  String name,model,energy,duration,imagePath;
  Color bgcolor;
  bool viewSelected;

  static List<VehicleModel>getVehicle(){
  List<VehicleModel>vehicledetail=[];

 vehicledetail.add(
     VehicleModel(
         name: "Ather",
         imagePath: "assets/images/Charging-car.png",
         model: "Electric Scooter",
         energy: "5kwhr",
         duration: "45 mins",
         //bgcolor:Color.fromARGB(255,17,255,208).withOpacity(0.1),
         viewSelected: true));
  vehicledetail.add(
      VehicleModel(
          name: "Ather",
          imagePath: "assets/images/Charging-car.png",
          model: "Electric Scooter",
          energy: "5kwhr",
          duration: "45 mins",
          //bgcolor: Color(0xff92A3FD),
          viewSelected: false));
  vehicledetail.add(
      VehicleModel(
          name: "Ather",
          imagePath: "assets/images/Charging-car.png",
          model: "Electric Scooter",
          energy: "5kwhr",
          duration: "45 mins",
          //bgcolor: Color(0xff92A3FD),
          viewSelected: false));
  vehicledetail.add(
      VehicleModel(
          name: "Ather",
          imagePath: "assets/images/Charging-car.png",
          model: "Electric Scooter",
          energy: "5kwhr",
          duration: "45 mins",
         // bgcolor: Color(0xff92A3FD),
          viewSelected: false));
  return vehicledetail;

  }
}