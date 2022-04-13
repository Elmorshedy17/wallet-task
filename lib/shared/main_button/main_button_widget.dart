import 'package:flutter/material.dart';
import 'package:wallet_task/app_core/resources/app_style/app_style.dart';

class MainButtonWidget extends StatelessWidget {
  final double? width;
  final Color? color, shadowColor;
  final String title;
  final VoidCallback? onClick;
  final TextStyle titleTextStyle;

   MainButtonWidget({
    Key? key,
    this.width,
    this.titleTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w300,
      height: 1.3,
      fontFamily: "normal"
    ),
    this.color,
    this.shadowColor,
    required this.title,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      margin: const EdgeInsets.only(bottom: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          primary: color ?? AppStyle.brown,
          shadowColor: shadowColor ?? AppStyle.brown,
          fixedSize: Size.fromWidth(width ?? MediaQuery.of(context).size.width),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: Text(
          title,
          style: titleTextStyle,
          textAlign: TextAlign.center,
        ),
        onPressed: onClick,
      ),
    );
  }
}
