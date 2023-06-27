import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// виджет нажатия
class MyInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;

  const MyInkWell(
      {Key? key, required this.child, required this.onTap, this.borderRadius,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: onTap,
            ),
          ),
        )
      ],
    );
  }
}
