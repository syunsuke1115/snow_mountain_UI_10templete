import 'package:flutter/material.dart';
import 'package:snow_mountain/misc/colors.dart';
import 'package:snow_mountain/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  String? text;
  IconData? icon;
  double size;
  final Color borderColor;
  final bool isIcon;

  AppButtons(
      {Key? key,
      this.icon,
      this.text,
      required this.isIcon,
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Center(
            child: Icon(
                icon,
                color: color,
              ),
          ),
    );
  }
}
