import 'package:flutter/material.dart';

class OrederItem extends StatelessWidget {
  const OrederItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 324,
        height: 103,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.97, -0.25),
            end: Alignment(-0.97, 0.25),
            colors: [Color(0xFF242424), Color(0x00242424)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.46),
          ),
        ),
      ),
    );
  }
}
