import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.title,
    required this.body,
  });
  final String title, body;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
        const Text(
          ':  ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          flex: 2,
          child: Text(
            body,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}