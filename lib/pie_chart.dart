import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'sector.dart';

class PieChartWidget extends StatelessWidget {
  final List<Sector> sectors;

  const PieChartWidget(this.sectors, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.5,
        child: PieChart(PieChartData(
          sections: _chartSections(sectors),
          centerSpaceRadius: 60.0,
        )));
  }

  List<PieChartSectionData> _chartSections(List<Sector> sectors) {
    final List<PieChartSectionData> list = [];
    for (var sector in sectors) {
      const double radius = 25.0;
      final data = PieChartSectionData(
        color: sector.color,
        value: sector.value,
        radius: radius,
        title: sector.title,
      );
      list.add(data);
    }
    return list;
  }
}