import 'package:flutter/material.dart';
import 'package:vkontacte/screens/screen_messengers/screen_serch/user_detalis/records_user.dart';
import 'package:vkontacte/screens/screen_messengers/screen_serch/user_detalis/user_detalis_communication.dart';
import 'package:vkontacte/screens/screen_messengers/screen_serch/user_detalis/user_detalis_widget_image.dart';
import 'package:vkontacte/theme.dart';
import 'user_detalis_friends.dart';

class UserDetalisWidget extends StatefulWidget {
  final int idUser;

  UserDetalisWidget({Key? key, required this.idUser}) : super(key: key);

  @override
  State<UserDetalisWidget> createState() => _UserDetalisWidgetState();
}

class _UserDetalisWidgetState extends State<UserDetalisWidget> {
  final List<String> recordsUser = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(MyColors.grey),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric())),
            child: Icon(
              Icons.calendar_view_month_rounded,
              color: MyColors.white,
            ),
          ),
          TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(MyColors.grey),
              ),
              child: Icon(
                Icons.menu,
                color: MyColors.white,
              ))
        ]),
        body: ListView(
            children: [
              UserDetalisCommunication(),
              FrendsUser(),
              UserDetelisWidgetFoto(),
              RecordsUser()
            ],

        ));
  }
}
