import 'package:flutter/material.dart';

class Sortmethod extends StatelessWidget {
  final void Function() funcLex;
  final void Function() sortRoll;
  const Sortmethod({super.key, required this.funcLex, required this.sortRoll});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sort"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
          child: Column(
        children: [
          TextButton.icon(
              onPressed: funcLex,
              icon: const Icon(Icons.sort_by_alpha),
              label: const Text("Sort Lexicographically")),
          const SizedBox(
            height: 10,
          ),
          TextButton.icon(
              onPressed: sortRoll,
              icon: const Icon(Icons.sort_sharp),
              label: const Text("Sort By Roll Number")),
        ],
      )),
    );
  }
}
