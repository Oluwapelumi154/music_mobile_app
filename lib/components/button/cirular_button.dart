import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget image;
  final Function()? onClick;
  const CircularButton(
      {super.key,
      required this.width,
      this.onClick,
      required this.height,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [Color(0Xff2F353A), Color(0XFF1C1F22)])),
        child: GestureDetector(onTap: onClick, child: Center(child: image)),
      ),
    );
  }
}
