import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/constomelevated_button.dart';
import '../widgets/costomtext_field.dart';

class ShowField extends StatelessWidget {
  final String? email;
  final String? password;
  final title1C = TextEditingController();
  final title2C = TextEditingController();
  ShowField({super.key, this.email, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('show field'),
      ),
      body: Column(
        children: [
          Text(email!),
          Text(password!),
          CostomTextField(
            controllers: title1C,
            title: 'title',
          ),
          CostomTextField(
            controllers: title2C,
            title: 'titel2',
          ),
          CostomElevatedButton(
            onTaps: () {
             MyRouteArguments myRouteArguments =  MyRouteArguments(arg1: title1C.text, arg2: title2C.text);
              Navigator.pushNamed(context, '/showFieldModel',
                  arguments: myRouteArguments );
            },
            title: 'Next',
          )
        ],
      ),
    );
  }
}

class MyRouteArguments {
  final String arg1;
  final String arg2;

  MyRouteArguments({required this.arg1, required this.arg2});
}
