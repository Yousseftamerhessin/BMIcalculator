import 'package:flutter/material.dart';

class SliderControl extends StatelessWidget {
  final double value;
  final double min;
  final double max;
  final String label;
  final ValueChanged<double> onChanged;

  const SliderControl({
    required this.value,
    required this.min,
    required this.max,
    required this.label,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              '${value.round()}',
              style: const TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            const Text(
              ' cm',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Slider(
          value: value,
          min: min,
          max: max,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
