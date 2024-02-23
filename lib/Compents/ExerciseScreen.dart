import 'package:fitness_app/Constants/kTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercise extends StatefulWidget {
  const Exercise(
      {super.key,
      required this.count,
      required this.image,
      required this.name,
      required this.time});
  final String name;
  final String image;
  final int time;
  final int count;

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise>
    with SingleTickerProviderStateMixin {
  @override
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/${widget.image}.jpg"),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.dstATop),
        ),
      ),
      constraints: const BoxConstraints.expand(),
      child: Container(
        padding: const EdgeInsets.only(left: 30),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.black45, Colors.transparent],
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
          stops: [0.2, 0.6],
        )),
        child: Column(
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            const SizedBox(
              height: 120,
            ),
            FadeTransition(
                opacity: animation,
                child: Text(widget.name, style: kStrongTextStyle)),
            const SizedBox(
              height: 40,
            ),
            Text(
              "${widget.time}",
              style: kTimeAndCountTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Mintues",
              style: kLightTextStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text("${widget.count}", style: kTimeAndCountTextStyle),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Times",
              style: kLightTextStyle,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.only(top: 20.0, bottom: 20, right: 30),
              child:  FadeTransition(
                opacity: animation,
                child: const Text(
                  "Start the morning with your health",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
