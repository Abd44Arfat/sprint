import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/common/components/widgets/my_text.dart';
import '../../core/resources/colors_manager.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff141415),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background,
        title:   MyText(
          'Orders',
          textStyle: TextStyleEnum. poppinsRegualr,
          fontSize: 20.sp,
          color: AppColors.hintColor,
        ),



      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Color(0xFF232323),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(7),
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: AppColors.white,

                          labelStyle: TextStyle(fontFamily:'Blinker',fontWeight: FontWeight.w500,fontSize: 20),
                          indicatorColor: Colors.white,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: 'Current',
                            ),
                            Tab(
                              text: 'History',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(),
                      Container(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}