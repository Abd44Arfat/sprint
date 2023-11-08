import 'package:actvex/presentation/cart/widgets/product_item.dart';
import 'package:actvex/presentation/order_deatails/widgets/my_timeline_tile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderDetailsBody extends StatefulWidget {
  const OrderDetailsBody({super.key});

  @override
  State<OrderDetailsBody> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 380.h,
            decoration: ShapeDecoration(
              color: Color(0xFF1E1E1E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: ListView(
              children: [
                MyTimeLineTile(
                  isFirst: true,
                  isLast: false,
                  isPast: true,
                  text: 'Delivered',
                  time: '22 Jan 2021-4:30',
                ),
                MyTimeLineTile(
                  isFirst: false,
                  isLast: false,
                  isPast: true,
                  text: 'Delivered',
                  time: '22 Jan 2021-4:30',
                ),
                MyTimeLineTile(
                    isFirst: false,
                    isLast: true,
                    isPast: false,
                    text: 'Delivered',
                    time: '22 Jan 2021-4:30'),
              ],
            ),
          ),
          ProductCartItem(),
        ],
      ),


    );
  }
}
