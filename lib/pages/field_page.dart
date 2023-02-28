import 'package:flutter/material.dart';

import '../widgets/constomelevated_button.dart';
import '../widgets/costomtext_field.dart';

class FieldPage extends StatelessWidget {
  FieldPage({super.key});
  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('field Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CostomTextField(controllers: emailC, title: 'email'),
              CostomTextField(
                controllers: passwordC,
                title: 'password',
              ),
              CostomElevatedButton(
                onTaps: () {
                  Navigator.pushNamed(context, '/showField',
                      arguments: {'email': emailC.text , 'password': passwordC.text,});
                },
                title: 'Next',
              )
            ],
          ),
        ));
  }
}
