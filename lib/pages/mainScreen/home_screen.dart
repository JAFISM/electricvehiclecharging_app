import 'package:electricvehiclecharging_app/pages/constants.dart';
import 'package:electricvehiclecharging_app/pages/mainScreen/vehicleData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<VehicleModel> vehicledetail = [];

  @override
  void initState() {
    vehicledetail = VehicleModel.getVehicle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Jafis",
                        style: TextStyle(
                            color: dark,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/prof_pic.jpeg"))
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: SliverList(delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Your Vehicle",
                        style: TextStyle(
                            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      //color: Colors.blue,
                      height:250,
                      child: Expanded(
                        child: ListView.separated(
                          // physics: NeverScrollableScrollPhysics(),
                          //   shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            itemBuilder: (context, index) {
                              return Container(
                                width: 210,
                                decoration: BoxDecoration(
                                  color: vehicledetail[index].bgcolor.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Image.asset(
                                         vehicledetail[index].imagePath,
                                          fit: BoxFit.cover,
                                           height:100,
                                          // width: 100,
                                        ),
                                      ),
                                      flex: 5,
                                    ),
                                    Text(
                                      vehicledetail[index].name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 16),
                                    ),
                                    Text(
                                     vehicledetail[index].model +
                                          ' | ' +
                                          vehicledetail[index].duration +
                                          ' | ' +
                                        vehicledetail[index].energy,
                                      style: const TextStyle(
                                          color: Color(0xff7B6F72),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 45,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          gradient: LinearGradient(colors: [
                                            vehicledetail[index].viewSelected
                                                ? Color(0xff9DCEFF)
                                                : Colors.transparent,
                                            vehicledetail[index].viewSelected
                                                ? Color(0xff92A3FD)
                                                : Colors.transparent,
                                          ]),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "View",
                                            style: TextStyle(
                                                color:vehicledetail[index].viewSelected
                                                    ? Colors.white
                                                    : Color(0xffC58BF2),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => const SizedBox(
                              width: 25,
                            ),
                            itemCount: vehicledetail.length),
                      ),
                    ),
                  ],
                )
              ]),))
        ],
      ),
    ));
  }
}
