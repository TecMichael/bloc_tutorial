import 'package:flutter/material.dart';

class TextfieldForm extends StatelessWidget {
  const TextfieldForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: null,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: 'Email Address',
        labelText: 'Email Address',
        labelStyle: const TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: Colors.grey.shade400),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          // borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
