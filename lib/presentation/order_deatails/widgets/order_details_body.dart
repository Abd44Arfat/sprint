import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class orderDetails extends StatelessWidget {
  const orderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Stack(
          children: [
            SvgPicture.asset('assets/images/Vector.svg'),

            Positioned(
              top: 20,

              child: SvgPicture.asset('assets/images/truestatus.svg'),
            )

          ],


        ),

      ],
    );


  }}