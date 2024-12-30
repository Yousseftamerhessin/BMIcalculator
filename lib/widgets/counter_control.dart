import 'package:flutter/material.dart';

class CounterControl extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  const CounterControl({
    required this.title,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color(0xff1A1F38),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              '$value',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: '$title-decrement',
                  mini: true,
                  onPressed: onDecrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10.0),
                FloatingActionButton(
                  heroTag: '$title-increment',
                  mini: true,
                  onPressed: onIncrement,
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
