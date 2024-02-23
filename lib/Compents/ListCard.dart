import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.activityName});
  final String activityName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5, top: 5),
      child: ListTile(
        leading: const Icon(
          Icons.task,
          color: Colors.grey,
        ),
        title: Text(
          activityName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
