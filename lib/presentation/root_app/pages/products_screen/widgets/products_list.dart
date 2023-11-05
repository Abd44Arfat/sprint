
import 'package:actvex/presentation/root_app/pages/products_screen/widgets/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(

        itemBuilder: (context, index) {
          return Container(
            height: 292.h,
            width:343.w ,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const ProductItem(),
          );
        },


        itemCount: 5,
      ),
    );
  }
}