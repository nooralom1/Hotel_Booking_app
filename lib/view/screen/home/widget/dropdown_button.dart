import 'package:flutter/material.dart';

class CommonDropDownButton extends StatelessWidget {
  const CommonDropDownButton({
    super.key,
    this.labelText,
    this.value,
    this.items,
    this.onChanged,
    this.icon,
    this.hintText,
    this.height,
    this.iSize, this.width,
  });
  final String? labelText;
  final String? hintText;
  final String? value;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  final Widget? icon;
  final double? height;
  final double? width;
  final double? iSize;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: height ?? screenHeight*0.07,
      width: width?? screenWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: DropdownButtonFormField<String>(
          icon: Icon(
            Icons.arrow_drop_down_outlined,
            size: iSize,
          ),
          decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              border: const UnderlineInputBorder(borderSide: BorderSide.none)),
          value: value,
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}