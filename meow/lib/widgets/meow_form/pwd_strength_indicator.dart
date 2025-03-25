
import 'package:flutter/material.dart';

enum PsdStrength { strong, medium, weak }

class PsdStrengthIndicator extends StatelessWidget {
  final PsdStrength psdStrength;
  final double lineHeight;
  const PsdStrengthIndicator(
      {super.key, required this.psdStrength, required this.lineHeight});

  final _strengthGapWidth = 8.0;
  @override
  Widget build(BuildContext context) {
    var psdIndicator =
        PsdIndicator(psdStrength: psdStrength);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: lineHeight,
            color: psdIndicator.lineColors[0],
          ),
        ),
        SizedBox(width: _strengthGapWidth),
        Flexible(
          flex: 1,
          child: Container(
            height: lineHeight,
            color: psdIndicator.lineColors[1],
          ),
        ),
        SizedBox(width: _strengthGapWidth),
        Flexible(
          flex: 1,
          child: Container(
            height: lineHeight,
            color: psdIndicator.lineColors[2],
          ),
        ),
        SizedBox(width: _strengthGapWidth),
        Text(
          psdIndicator.strengthText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: psdIndicator.strengthTextColor,
          ),
        ),
      ],
    );
  }
}

class PsdIndicator {
  final PsdStrength psdStrength;
  late List<Color> _lineColors;
  late String _strengthText;
  late Color _strengthTextColor;

  PsdIndicator({required this.psdStrength}) {
    switch (psdStrength) {
      case PsdStrength.weak:
        _lineColors = const [
          Color(0xFFCCCCCC),
          Color(0xFFCCCCCC),
          Color(0xFFCCCCCC)
        ];
        _strengthText = '弱';
        _strengthTextColor = Colors.red;
        break;
      case PsdStrength.medium:
        _lineColors = const [
          Color(0xFF00A52B),
          Color(0xFF00A52B),
          Color(0xFFCCCCCC)
        ];
        _strengthText = '中等';
        _strengthTextColor = Colors.orange;
        break;
      default:
        _lineColors = const [
          Color(0xFF00A52B),
          Color(0xFF00A52B),
          Color(0xFF00A52B)
        ];
        _strengthText = '强';
        _strengthTextColor = const Color(0xFF00A52B);
        break;
    }
  }

  get lineColors => _lineColors;
  get strengthText => _strengthText;
  get strengthTextColor => _strengthTextColor;
}