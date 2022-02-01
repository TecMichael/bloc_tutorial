import 'package:find_cribs_app/home_screens/home_page.dart';
import 'package:find_cribs_app/home_screens/ui_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Repository/jokes_repository.dart';
import 'bloc/jokesbloc/jokes_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: (...),
      home: Home(),
      

    );
  }
}
