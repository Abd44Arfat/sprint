import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseAddressList extends StatefulWidget {
  const ChooseAddressList({Key? key}) : super(key: key);

  @override
  _ChooseAddressListState createState() => _ChooseAddressListState();
}

class _ChooseAddressListState extends State<ChooseAddressList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      clipBehavior: Clip.none,
      itemBuilder: (context, index) {
        return AddressItem(
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
      itemCount: 2,
    );
  }
}

class AddressItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const AddressItem({
    Key? key,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 800),
              width:isSelected? 100.w:72.w,
              height: 72.h,
              padding: const EdgeInsets.only(
                top: 14,
                left: 6,
                right: 6.20,
                bottom: 13.42,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: isSelected ? Colors.green : Color(0xFF242424),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: SvgPicture.asset('assets/images/boxx.svg'),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    'Home',
                    textStyle: TextStyleEnum.poppinsBold,
                    fontSize: 20.sp,
                    color: AppColors.grey,
                  ),
                  MyText(
                    'game controller',
                    textStyle: TextStyleEnum.poppinsRegualr,
                    fontSize: 18.sp,
                    color: AppColors.hintColor,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  FeatherIcons.edit,
                  color: AppColors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}