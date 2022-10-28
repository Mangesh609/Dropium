import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarGraphComponent extends StatelessWidget {
  const BarGraphComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
        BarChartData(
            alignment: BarChartAlignment.center,
            minY: 0,
            maxY: 100,
            groupsSpace:2,
            barTouchData: BarTouchData(enabled: true),
            barGroups:[
              BarChartGroupData(
                  x: 0,
                  barRods:[
                    BarChartRodData(toY:50,color: Color.fromRGBO(99, 153, 181, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:10,color:Color.fromRGBO(168,207,69, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:60,color:Color.fromRGBO(140, 176, 46, 1.0),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:30,color:Color.fromRGBO(81, 109, 138, 1.0),borderRadius: BorderRadius.circular(0)),

                  ]
              ),
              BarChartGroupData(
                  x: 1,
                  barRods:[
                    BarChartRodData(toY:60,color: Color.fromRGBO(99, 153, 181, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:20,color:Color.fromRGBO(168,207,69, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:40,color:Color.fromRGBO(140, 176, 46, 1.0),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:10,color:Color.fromRGBO(81, 109, 138, 1.0),borderRadius: BorderRadius.circular(0)),

                  ]
              ),
              BarChartGroupData(
                  x:2,
                  barRods:[
                    BarChartRodData(toY:20,color: Color.fromRGBO(99, 153, 181, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:30,color:Color.fromRGBO(168,207,69, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:60,color:Color.fromRGBO(140, 176, 46, 1.0),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:50,color:Color.fromRGBO(81, 109, 138, 1.0),borderRadius: BorderRadius.circular(0)),

                  ]
              ),
              BarChartGroupData(
                  x:3,
                  barRods:[
                    BarChartRodData(toY:20,color: Color.fromRGBO(99, 153, 181, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:30,color:Color.fromRGBO(168,207,69, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:40,color:Color.fromRGBO(140, 176, 46, 1.0),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:50,color:Color.fromRGBO(81, 109, 138, 1.0),borderRadius: BorderRadius.circular(0)),

                  ]
              ),
              BarChartGroupData(
                  x: 4,
                  barRods:[
                    BarChartRodData(toY:10,color: Color.fromRGBO(99, 153, 181, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:20,color:Color.fromRGBO(168,207,69, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:30,color:Color.fromRGBO(140, 176, 46, 1.0),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:40,color:Color.fromRGBO(81, 109, 138, 1.0),borderRadius: BorderRadius.circular(0)),

                  ]
              ),
              BarChartGroupData(
                  x:5,
                  barRods:[
                    BarChartRodData(toY:10,color: Color.fromRGBO(99, 153, 181, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:60,color:Color.fromRGBO(168,207,69, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:50,color:Color.fromRGBO(140, 176, 46, 1.0),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:40,color:Color.fromRGBO(81, 109, 138, 1.0),borderRadius: BorderRadius.circular(0)),

                  ]
              ),
              BarChartGroupData(
                  x: 6,
                  barRods:[
                    BarChartRodData(toY:60,color: Color.fromRGBO(99, 153, 181, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:20,color:Color.fromRGBO(168,207,69, 1),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:40,color:Color.fromRGBO(140, 176, 46, 1.0),borderRadius: BorderRadius.circular(0)),
                    BarChartRodData(toY:10,color:Color.fromRGBO(81, 109, 138, 1.0),borderRadius: BorderRadius.circular(0)),

                  ]
              ),
            ]
        )
    );
  }
}
