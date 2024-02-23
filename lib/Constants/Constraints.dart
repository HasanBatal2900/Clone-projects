import 'package:flutter/material.dart';
import 'package:fitness_app/Compents/ExerciseScreen.dart';
import 'package:fitness_app/Compents/ListCard.dart';

const List<Exercise> excries = [
  Exercise(count: 15, image: "1", name: "Exercise 1", time: 15),
  Exercise(count: 5, image: "2", name: "Exercise 1", time: 15),
  Exercise(count: 25, image: "3", name: "Exercise 1", time: 15),
  Exercise(count: 20, image: "4", name: "Exercise 1", time: 15),
  Exercise(count: 30, image: "5", name: "Exercise 1", time: 15),
];

Color kfirstColorCard1 = Colors.lightBlue;
Color ksecondColorCard1 = Colors.lightBlue.shade200;

Color kfirstColorCard2 = Colors.redAccent;
Color ksecondColorCard2 = Colors.orange.shade100;

const List<ListCard> activites = [
  ListCard(activityName: "Run Through the Stree"),
  ListCard(activityName: "Stomach Exercises"),
  ListCard(activityName: "Hold Weights "),
  // ListCard(activityName: "Use The Treadmil"),
  // ListCard(activityName: "press the button"),
];
