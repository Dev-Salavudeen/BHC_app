import 'dart:ui';
import 'package:flutter/material.dart';

import '../widgets/form_one.dart';
import '../widgets/form_three.dart';
import '../widgets/form_two.dart';


class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();

  static _StepperPageState? of(BuildContext context) =>
      context.findAncestorStateOfType<_StepperPageState>();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;

  void goToNextStep() {
    setState(() {
      if (_currentStep < 2) {
        _currentStep++;
      }
    });
  }

  void goToPreviousStep() {
    setState(() {
      if (_currentStep > 0) {
        _currentStep--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _CircleStep(number: '1', isActive: _currentStep >= 0),
                  _DottedLine(isActive: _currentStep >= 1),
                  _CircleStep(number: '2', isActive: _currentStep >= 1),
                  _DottedLine(isActive: _currentStep >= 2),
                  _CircleStep(number: '3', isActive: _currentStep >= 2),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: IndexedStack(
                index: _currentStep,
                children: [
                  Page1(onConfirm: () {
                    goToNextStep();
                  }),
                  Page2(onBack: () {
                    goToPreviousStep();
                  }, onNext: () {
                    goToNextStep();
                  }),
                  Page3(onBack: () {
                    goToPreviousStep();
                  }),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _CircleStep extends StatelessWidget {
  final String number;
  final bool isActive;

  const _CircleStep({required this.number, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    Color color = isActive ? Colors.red.shade900 : Colors.grey;
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(width: 1, color: color),
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _DottedLine extends StatelessWidget {
  final bool isActive;

  const _DottedLine({this.isActive = false});

  @override
  Widget build(BuildContext context) {
    Color color = isActive ? Colors.red.shade900 : Colors.grey;
    return Expanded(
      child: CustomPaint(
        painter: _DottedLinePainter(color: color),
      ),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  final Color color;

  _DottedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final double startY = size.height / 2;
    final double endX = size.width;

    for (double startX = 0; startX < endX; startX += 6) {
      canvas.drawPoints(
        PointMode.points,
        [
          Offset(startX, startY),
        ],
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

