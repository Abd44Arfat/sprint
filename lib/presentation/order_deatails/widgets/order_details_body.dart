import 'package:actvex/presentation/order_deatails/widgets/my_timeline_tile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderDetailsBody extends StatefulWidget {
  const OrderDetailsBody({super.key});

  @override
  State<OrderDetailsBody> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

children: [

MyTimeLineTile(isFirst: true, isLast: false, isPast: true,eventCard: Text('dsvd'),),
MyTimeLineTile(isFirst: false, isLast: false, isPast: true,eventCard: Text('dsfwevd'),),
MyTimeLineTile(isFirst: false, isLast: true, isPast: false,eventCard: Text('dsewfvwvd'),),
],

      ),
    );
  }
}

