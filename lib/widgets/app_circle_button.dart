import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton({Key? key, this.color, this.width=60, required this.child, this.onTap}) : super(key: key);
  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      shape:const CircleBorder(),
      child:InkWell(
        child: child,
      ),
    );
  }
}
