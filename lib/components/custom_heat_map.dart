import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';


class CustomHeatMap extends StatelessWidget {
  const CustomHeatMap({super.key});

  @override
  Widget build(BuildContext context) {
    return HeatMap(
      datasets: {
        DateTime(2024, 12, 1): 1,
        DateTime(2024, 12, 2): 3,
        DateTime(2024, 12, 3): 5,
        DateTime(2024, 12, 4): 7,
        DateTime(2024, 12, 5): 9,
        DateTime(2024, 12, 6): 11,

      },
      size: 40,
      colorMode: ColorMode.color,
      startDate: DateTime(2024, 12, 1),
      endDate: DateTime(2024, 12, 8),
      showText: false,
      scrollable: true,
      textColor: Colors.white,
      colorsets: const {
        1: Color(0xFF505467), 
        3: Color(0xFF9A9EB2), 
        5: Color(0xFF686D80), 
        7: Color(0xFF252833), 
        9: Color(0xFF3A3D4D), 
        11: Color(0xFFEAECF3), 
      },
      onClick: (value) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Clicked: $value')));
      },
    );
  }
}
