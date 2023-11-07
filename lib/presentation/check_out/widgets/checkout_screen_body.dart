import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/Address_user/user_address.dart';
import 'package:actvex/presentation/Categories_screen/Categories_Screen.dart';
import 'package:flutter/material.dart';

class CheckoutBody extends StatefulWidget {
  const CheckoutBody({Key? key}) : super(key: key);

  @override
  State<CheckoutBody> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CheckoutBody> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  final List<Widget> pages = [
    CategoriesScreen(), // Replace with your first page widget
    UserAddress(), // Replace with your second page widget
    CategoriesScreen(), // Replace with your third page widget
    UserAddress(), // Replace with your fourth page widget
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Let's add some padding
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              StepperComponent(
                currentIndex: _currentIndex,
                index: 0,
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  _pageController.jumpToPage(0);
                },
              ),
              StepperComponent(
                currentIndex: _currentIndex,
                index: 1,
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  _pageController.jumpToPage(1);
                },
              ),
              StepperComponent(
                currentIndex: _currentIndex,
                index: 2,
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  _pageController.jumpToPage(2);
                },
              ),
              StepperComponent(
                currentIndex: _currentIndex,
                index: 3,
                isLast: true,
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                  _pageController.jumpToPage(3);
                },
              ),
            ],
          ),
        ),

        Expanded(
          child: PageView.builder(
            // Only scroll with bubbles
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemCount: 4,
            itemBuilder: (context, index) {
              return pages[index];
            },
          ),
        ),
      ],
    );
  }
}

class StepperComponent extends StatelessWidget {
  // index describe the position of our bubble
  int index;
  //currentIndex is index that is gonna change on Tap
  int currentIndex;
  //onTap CallBack
  VoidCallback onTap;

  bool isLast;
  StepperComponent({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final isCompleted = currentIndex >= index;

    //now let's remove the ligne at the end of the row but also we need to remove unnecessary padding thus we need to remove the expanded
    //widget
    return isLast
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  //this is the bubble
                  GestureDetector(
                    onTap: onTap,
                    child: Stack(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: isCompleted
                                ? AppColors.primaryColor
                                : Colors.transparent,
                            border: Border.all(
                                color: isCompleted
                                    ? AppColors.primaryColor
                                    : Colors.black12),
                          ),
                        ),
                        // Shadow container placed above the first container
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: ShapeDecoration(
                              color: Color.fromARGB(255, 253, 253, 253),
                              shape: const CircleBorder(),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x4C111012),
                                  blurRadius: 3,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //this the ligne
                  Container(
                    height: 5,
                    //why index+1 we want to turn the ligne orange that precede the active bubble
                    color:
                        isCompleted ? AppColors.primaryColor : Colors.black12,
                  ),
                ],
              ),
              //index+1 we dont wanna show 0 in the screen since our index will start at 0
              Text('Page ${index + 1}'),
            ],
          )
        : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    //this is the bubble
                    GestureDetector(
                      onTap: onTap,
                      child: Stack(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: isCompleted
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                              border: Border.all(
                                  color: isCompleted
                                      ? AppColors.primaryColor
                                      : Colors.black12),
                            ),
                          ),
                          // Shadow container placed above the first container
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: ShapeDecoration(
                                color: Color.fromARGB(255, 253, 253, 253),
                                shape: const CircleBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x4C111012),
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //this the ligne
                    Expanded(
                        child: Container(
                      height: 10,
                      //why index+1 we want to turn the ligne orange that precede the active bubble
                      color: currentIndex >= index + 1
                          ? AppColors.primaryColor
                          : Colors.black12,
                    )),
                  ],
                ),
                //index+1 we dont wanna show 0 in the screen since our index will start at 0
                Text('Page ${index + 1}'),
              ],
            ),
          );
  }
}
