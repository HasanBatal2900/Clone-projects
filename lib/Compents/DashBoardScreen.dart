import 'dart:developer';

import 'package:fitness_app/Compents/itemContainer.dart';
import 'package:fitness_app/Constants/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});
  static String id = "/DashBoard";
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  late String argumentData;
  void initState() {
    argumentData = Get.arguments[0];
    log(argumentData);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // ListTile(
            //   title: Padding(
            //     padding: const EdgeInsets.only(left: 60.0),
            //     child: Text(
            //       "DashBoard ",
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            //   trailing: CircleAvatar(
            //     backgroundImage: AssetImage("images/1.jpg"),
            //     radius: 25,
            //   ),
            // ),

            Container(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 5.0, bottom: 5),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  const Text(
                    "DashBoard ",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/$argumentData.jpg"),
                    radius: 25,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 14.0, top: 8),
                    child: Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ItemContainer(
                          title: "Steps",
                          value: "3500",
                          first: kfirstColorCard1,
                          second: ksecondColorCard1),
                      ItemContainer(
                          title: "Sports",
                          value: "25 M",
                          first: kfirstColorCard2,
                          second: ksecondColorCard2),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 14.0, top: 8),
                    child: Text(
                      "Health Categories",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                      height: 350,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(2, 2),
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(
                          color: Colors.black54,
                        ),
                        itemBuilder: ((context, index) => activites[index]),
                        itemCount: activites.length,
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
