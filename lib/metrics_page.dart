import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content_widget.dart';
import 'metric_widget.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = 0xFF1D1E33;
const inactiveCardColor = 0xFF111328;
const bottomContainerColor = 0xFFEB1555;

class MetricsPage extends StatefulWidget {
  @override
  _MetricsPageState createState() => _MetricsPageState();
}

class _MetricsPageState extends State<MetricsPage> {
  Color maleCardColor = Color(inactiveCardColor);
  Color femaleCardColor = Color(inactiveCardColor);

  void updateGenderButtonsColor(bool isMale) {
    setState(() {
      maleCardColor = isMale == true ? Color(activeCardColor) : Color(inactiveCardColor);
      femaleCardColor = isMale == false ? Color(activeCardColor) : Color(inactiveCardColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateGenderButtonsColor(true);
                    },
                    child: MetricCard(
                      color: maleCardColor,
                      child: IconContent(icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateGenderButtonsColor(false);
                    },
                    child: MetricCard(
                      color: femaleCardColor,
                      child: IconContent(icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          MetricCard(color: Color(activeCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                MetricCard(color: Color(activeCardColor)),
                MetricCard(color: Color(activeCardColor)),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
