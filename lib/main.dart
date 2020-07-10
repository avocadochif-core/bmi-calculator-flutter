import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, statusBarBrightness: Brightness.light));
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: MetricsPage(),
      ),
    );
  }
}

class MetricsPage extends StatefulWidget {
  @override
  _MetricsPageState createState() => _MetricsPageState();
}

class _MetricsPageState extends State<MetricsPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
