import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.genreName});
  final String genreName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        genreName,
        style: Constants.theme.textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
