import 'package:flutter/material.dart';

class MetricCard extends StatelessWidget {
  MetricCard({@required this.color, this.child});

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: child,
      ),
    );
  }
}
