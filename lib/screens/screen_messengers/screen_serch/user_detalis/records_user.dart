import 'package:flutter/material.dart';
import 'package:vkontacte/theme.dart';
import 'package:vkontacte/theme.dart';

import '../../../../images_app/imagesPath.dart';

class RecordsUser extends StatelessWidget {
  RecordsUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const Icon(Icons.account_circle),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                 Text('Георгий Коновалов'),
                 Text('17 янв 2019 в 15:48 обновлено фото'),
                Image.asset(ImagesPath.ezhic, height: 250, width: 200, alignment: Alignment.center,),

              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
