import 'package:flutter/material.dart';
import 'package:meow/resources/res_export.dart';

class MeowBtn extends StatelessWidget {
  const MeowBtn({
    super.key,
    this.text = 'text',
    this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {

    final Color primaryColor = Theme.of(context).primaryColor;
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: primaryColor,
          ),
          child: Text(
            text,
            style: MeowFontStyles.white16,
          ),
        )
      ),
    );
  }
}
