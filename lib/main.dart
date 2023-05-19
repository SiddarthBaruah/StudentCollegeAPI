import 'package:flutter/material.dart';
import 'package:instiapp/pages/loading.dart';
import 'package:instiapp/pages/home.dart';
import 'package:instiapp/pages/sort.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingScreen(),
      '/Home': (context) {
        final Map<String, dynamic>? arguments =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
        final dynamic data = arguments?['data'];
        return Home(data: data);
      },
      '/Sort': (context) {
        final Map<String, dynamic>? arguments =
            ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
        final dynamic funcLex = arguments?['funcLex'];
        final dynamic sortRoll = arguments?['sortRoll'];
        return Sortmethod(
          funcLex: funcLex,
          sortRoll: sortRoll,
        );
      }
    },
  ));
}
