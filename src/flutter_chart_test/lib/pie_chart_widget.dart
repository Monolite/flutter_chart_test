import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_chart_test/model/pie_section.dart';

class PieChartWidget extends StatelessWidget {
  final List<PieSection> sections;

  static const colors = <Color>[
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.lime,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  const PieChartWidget({required this.sections, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chartSections = <PieChartSectionData>[];

    for (int i = 0; i < sections.length; i++) {
      final color = colors[i];
      final section = sections[i];

      chartSections.add(
        PieChartSectionData(
          title: section.title,
          value: section.value,
          color: color,
          radius: 120,
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.all(16),
      child: PieChart(PieChartData(
        sections: chartSections,
        centerSpaceRadius: 0,
      )),
    );
  }
}
