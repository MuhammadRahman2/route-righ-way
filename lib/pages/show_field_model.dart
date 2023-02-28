import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShowFieldModel extends StatelessWidget {
  final String? title1;
  final String? title2;
  const ShowFieldModel({super.key,this.title1,this.title2});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: const Text('show Field Model'),
        ),
        body: Center(
          child: Column(
            children: [
            Text(title1.toString()), 
            Text(title2.toString())],
          ),
        ));
  }
}
