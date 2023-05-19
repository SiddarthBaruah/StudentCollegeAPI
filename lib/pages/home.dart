import 'package:flutter/material.dart';
import 'package:instiapp/pages/studentcard.dart';

class Home extends StatefulWidget {
  final List<dynamic> data;
  const Home({super.key, required this.data});

  @override
  State<Home> createState() => _HomeState(data: this.data);
}

class _HomeState extends State<Home> {
  final List<dynamic> data;
  _HomeState({required this.data});

  void sortLex() {
    setState(() {
      data.sort((a, b) => a['name'].compareTo(b['name']));
    });
  }

  void sortAlphabetically() {
    setState(() {
      data.sort((a, b) => a['roll no.'].compareTo(b['roll no.']));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Student name and College"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: data.map((e) => StudentCard(studentData: e)).toList()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Sort',
              arguments: {'funcLex': sortLex, 'sortRoll': sortAlphabetically});
        },
        child: const Icon(Icons.sort),
      ),
    );
  }
}
