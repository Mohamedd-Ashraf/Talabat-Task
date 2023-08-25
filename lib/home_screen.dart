// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, avoid_unnecessary_containers

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
   
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/profile.webp")),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              color: Colors.amber[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Mohamed Ashraf",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Talabat",
                          hintStyle: TextStyle(
                              color: Colors.amber[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      radius: 25,
                      backgroundColor: Colors.amber[900],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 130,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.amber[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Talabat Mart\n30min delivery",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Buy Fast and safe Buy Fast and safe Buy\n Fast and safe",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "shop Now",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: Colors.white,
                                minimumSize: Size(100, 30)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Image.asset("assets/cart.png")
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Catagores",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        alignment: AlignmentDirectional.bottomStart,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/pizza.jpeg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Food",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        alignment: AlignmentDirectional.bottomStart,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/vegatables.jpeg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Vegatables",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        alignment: AlignmentDirectional.bottomStart,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/car.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "car",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Offers",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(color: Colors.amber[700], fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  height: 150,
                  alignment: AlignmentDirectional.bottomStart,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/kfc.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (var index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: "home",
                backgroundColor: Colors.white,
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.amber[900],
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                label: "order",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                label: "ver",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                label: "ofers",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: "person",
              )
            ]));
  }
}
