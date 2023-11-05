part of 'widgets.dart';

class BottomNavBarWidget extends StatelessWidget {
  final void Function(int) onTap;
  final int index;
  const BottomNavBarWidget({
    Key? key,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final bottomNavCurve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    NotchPostition notchPostition = getNotchPosition(index, context);

    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 95.h,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Color(0x19716767),
            blurRadius: 20,
            offset: Offset(0, -7),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    children: [
                      AnimatedContainer(
                        curve: bottomNavCurve,
                        duration: Constants.bottomNavDuration,
                        height: 80.h,
                        width: getContainerUnderUnderNavBarX(index),
                        decoration: BoxDecoration(
                          color: AppColors.grey2,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.r),
                          ),
                        ),
                      ),
                      SizedBox(width: 100.w),
                      Expanded(
                        child: Container(
                          height: 80.h,
                          decoration: BoxDecoration(
                            color: AppColors.grey2,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8.r),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Constants.bottomNavDuration,
                curve: bottomNavCurve,
                left: notchPostition.left,
                right: notchPostition.right,
                bottom: 0,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 4.5.r,
                      backgroundColor: AppColors.primaryColor,
                    ),
                    SvgPicture.asset(
                      ImageAssets.bottomNav,
                      fit: BoxFit.cover,
                      color: AppColors.grey2, // color: Colors.white,
                      width: 2000,
                      height: 80.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        BottomNavIconWidget(
                          icon: FeatherIcons.home,
                          onTap: () => onTap(0),
                          isSelected: index == 0,
                        ),
                        SizedBox(width: 40.w),
                        BottomNavIconWidget(
                          icon: FeatherIcons.home,
                          onTap: () => onTap(1),
                          isSelected: index == 1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        BottomNavIconWidget(
                          icon: FeatherIcons.shoppingBag,
                          onTap: () => onTap(3),
                          isSelected: index == 3,
                        ),
                        SizedBox(width: 30.w),
                        BottomNavIconWidget(
                          icon: FeatherIcons.activity,
                          onTap: () => onTap(4),
                          isSelected: index == 4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: BottomNavIconWidget(
                  icon: FeatherIcons.alignJustify,
                  onTap: () => onTap(2),
                  isSelected: index == 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  NotchPostition getNotchPosition(int index, BuildContext context) {
    switch (index) {
      case 0:
        return NotchPostition(
          left: -(MediaQuery.sizeOf(context).width / 2 + 80.w),
        );
      case 1:
        return NotchPostition(
          left: -(MediaQuery.sizeOf(context).width / 2 - 45.w),
        );
      case 2:
        return NotchPostition(
          left: -(MediaQuery.sizeOf(context).width / 2 - 185.w),
          right: -(MediaQuery.sizeOf(context).width / 2 - 185.w),
        );
      case 3:
        return NotchPostition(
          left: -(MediaQuery.sizeOf(context).width / 2 - 350.w),
        );
      case 4:
        return NotchPostition(
          left: -(MediaQuery.sizeOf(context).width / 2 - 460.w),
        );
      default:
        return NotchPostition(left: 0, right: 0);
    }
  }

  double getContainerUnderUnderNavBarX(int index) {
    switch (index) {
      case 0:
        return 10.w;
      case 1:
        return 60.w;
      case 2:
        return 135.w;
      case 3:
        return 215.w;
      case 4:
        return 275.w;
      default:
        return 0;
    }
  }
}

class NotchPostition {
  final double? left;
  final double? right;
  NotchPostition({
    this.left = 0,
    this.right = 0,
  });
}
