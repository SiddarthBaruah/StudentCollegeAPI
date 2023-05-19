import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final dynamic studentData;
  const StudentCard({super.key, required this.studentData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Text(
                "${studentData['name']}   ",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text("Roll No."),
              Text("${studentData['roll no.']}"),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text("${studentData['college']}  "),
            ],
          ),
        ]),
      ),
    );
  }
}
