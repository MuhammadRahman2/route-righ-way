import 'package:flutter/material.dart';

class CostomTextField extends StatelessWidget {
  final String? title;
  final TextEditingController? controllers;
  const CostomTextField({
    super.key,
    this.title,
    this.controllers
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controllers,
        decoration: InputDecoration(
            hintText: title,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}