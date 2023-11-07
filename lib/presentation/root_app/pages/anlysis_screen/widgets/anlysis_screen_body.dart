import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DonutChart extends StatefulWidget {
  const DonutChart({super.key});

  @override
  State<DonutChart> createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  @override
  Widget build(BuildContext context) {
    //replace Place holder with Scaffold
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                PieChart(
                  //set the values of offset

                  PieChartData(
                    startDegreeOffset: 250,
                    sectionsSpace: 0,
                    centerSpaceRadius: 100,
                    // you can assign values according to your need
                    sections: [
                      //now we will set values
                      PieChartSectionData(
                        value: 45,
                        color: Colors.greenAccent,
                        radius: 45,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 35,
                        color: Colors.blue.shade900,
                        radius: 25,
                        showTitle: false,
                      ),
                      PieChartSectionData(
                        value: 20,
                        color: Colors.grey.shade400,
                        radius: 20,
                        showTitle: false,
                      ),
                    ],
                  ),
                ),
                //now we will set position of contain
                Positioned.fill(
                  //now perfect
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10.0,
                                spreadRadius: 10.0,
                                offset: const Offset(3.0, 3.0)),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "2305",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}