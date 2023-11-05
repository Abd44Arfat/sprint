import 'package:actvex/presentation/root_app/pages/products_screen/widgets/product_item.dart';
import 'package:actvex/presentation/root_app/pages/products_screen/widgets/productinfo_row.dart';
import 'package:actvex/presentation/root_app/pages/products_screen/widgets/products_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/components/widgets/my_text.dart';
import '../../../../../core/resources/colors_manager.dart';
import 'client_info_row.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

       Column(
        children: [
          SizedBox(height: 40.h,),
          ClientInfoRow(),
          FilterationList(),
          ProductInfoRow(title: 'Best Seller',),

          ProductsList(),
        ],
       );

  }
}
class FilterationList extends StatefulWidget {
  const FilterationList({Key? key}) : super(key: key);

  @override
  _FilterationListState createState() => _FilterationListState();
}

class _FilterationListState extends State<FilterationList> {
  int selectedIndex = -1; // Initially no item is selected

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // Update the selected index
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AnimatedContainer(
                width: 88.w,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectedIndex == index ? AppColors.primaryColor : Color(0xff262626),
                ),
                duration: Duration(milliseconds: 800),
                child: Center(
                  child: MyText(
                    'Best Seller',
                    textStyle: TextStyleEnum.poppinsRegualr,
                    fontSize: 14.sp,
                    color:selectedIndex==index? Colors.white:AppColors.hintColor, // Set the text color to white
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}