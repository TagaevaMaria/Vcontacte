import 'package:flutter/material.dart';
import '../theme.dart';


/// виджет кнопок лайки, репост, просмотры.
class ActivityTools extends StatelessWidget {
  final Icon icon;
  final Text quantity;

  /// количество лайков, сообщений или репостов.
  const ActivityTools({
    Key? key,
    required this.icon,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: icon,
      label: quantity,
      backgroundColor: MyColors.lightGray,
    );
  }
}