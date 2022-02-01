import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  const Sort({Key? key}) : super(key: key);

  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Favourites',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
