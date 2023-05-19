import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> getData() async {
    Response response = await get(Uri.https(
        '1qy9d2uuyg.execute-api.ap-northeast-1.amazonaws.com',
        '/default/Students-API'));
    List<dynamic> data = jsonDecode(response.body);
    if (kDebugMode) {
      print(data);
    }
    Navigator.pushReplacementNamed(context, '/Home', arguments: {'data': data});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 5),
            Text("Loading")
          ],
        ),
      ),
    );
  }
}
