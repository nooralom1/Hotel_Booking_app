import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    super.key,
    required this.text,
    this.fColor,
    this.fSize,
    this.fWeight,
    this.overflow,
    this.maxLines,
  });
  final String text;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWeight;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
          color: fColor?? Colors.black,
          fontSize: fSize ?? 15,
          fontWeight: fWeight,
          overflow: overflow),
      maxLines: maxLines,
    );
  }
}
