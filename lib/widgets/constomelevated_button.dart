import 'package:flutter/material.dart';

class CostomElevatedButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTaps;
  const CostomElevatedButton({super.key, this.title, this.onTaps});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minimumSize: const Size(double.infinity, 45)),
        onPressed: onTaps,
        child: Text(title.toString()));
  }
}
