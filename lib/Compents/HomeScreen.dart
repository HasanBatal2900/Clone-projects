import 'package:fitness_app/Compents/DashBoardScreen.dart';
import 'package:fitness_app/Constants/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  static const String id = "/Home";
  const HomeScreen({super.key});

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  late PageController pageController;
   int  currentindex = 0;
  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: RippleAnimation(
        color: Colors.lightBlue,
        delay: const Duration(milliseconds: 300),
        repeat: true,
        minRadius: 60,
        ripplesCount: 6,
        duration: const Duration(milliseconds: 6 * 300),
        child: FloatingActionButton(
            heroTag: "go button",
            onPressed: () {
              Get.to(const DashBoard(),
                  curve: Curves.easeIn,
                  arguments: excries[currentindex].image,
                  transition: Transition.fadeIn,
                  duration: const Duration(seconds: 1, microseconds: 100));
            },
            backgroundColor: Colors.lightBlue.withOpacity(0.6),
            elevation: 6.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            splashColor: Colors.amber),
      ),
      body: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) => excries[index],
        itemCount: excries.length,
        padEnds: true,
        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          setState(() {
            currentindex = value;
          });
        },
      ),
    );
  }
}
