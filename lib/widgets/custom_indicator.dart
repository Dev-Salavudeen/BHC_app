import 'package:flutter/material.dart';

class IndicatorCode extends StatefulWidget {
  final String text1;
  const IndicatorCode({
    super.key,
    required this.text1,
  });
  @override
  _IndicatorCodeState createState() => _IndicatorCodeState();
}

class _IndicatorCodeState extends State<IndicatorCode> {
  RangeValues _currentRange = RangeValues(200, 300);
  RangeValues _targetRange = RangeValues(200, 300);
  bool _isAdjusting = false;

  void _startAdjustment() {
    setState(() {
      _isAdjusting = true;
      _targetRange = _currentRange;
    });

    // Simulate a delay to show the adjustment process
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isAdjusting = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text1,
                style: TextStyle(
                  color: Color(0xFF515050),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'P.${_currentRange.start.toStringAsFixed(2)} - P.${_currentRange.end.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 14,
                  color:Color(0xFFAD2524),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
        RangeSlider(
          values: _currentRange,
          min: 100.0,
          max: 2000.0,
          divisions: 190,
          activeColor: Colors.red.shade900,
          inactiveColor:  Color(0xFFAD2524).withOpacity(0.3),
          labels: RangeLabels(
            '\P.${_currentRange.start.toStringAsFixed(2)}',
            '\P.${_currentRange.end.toStringAsFixed(2)}',
          ),
          onChanged: _isAdjusting
              ? null
              : (RangeValues values) {
            setState(() {
              _currentRange = values;
            });
          },
        ),
      ],
    );
  }
}