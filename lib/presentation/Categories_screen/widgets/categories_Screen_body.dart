import 'package:flutter/material.dart';

class CategoriesScreenBody extends StatelessWidget {
  const CategoriesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
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

          Positioned(

            right: -5,
            top: -70,
            child: Container(
              height: 150,
              child: Image.asset('assets/images/Image.png',)))
        ],
      ),
    );
  }
}
