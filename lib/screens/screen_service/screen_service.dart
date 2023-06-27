import 'package:flutter/material.dart';
import 'package:vkontacte/widgets/inkWell.dart';

import '../../images_app/imagesPath.dart';


class ScreenService extends StatelessWidget {
  const ScreenService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          ImagesPath.ezhic,
        ),
        title: const Text('Сервисы'),
        actions: const [Icon(Icons.search), Icon(Icons.menu)],
      ),
      body: ListView(
        children: [
          GroupsScrollWidget(),
        ],
      ),
    );
  }
}

class GroupsScrollWidget extends StatelessWidget {
  const GroupsScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text('Сообщества',),
              SizedBox(width: 290,),
              Icon(Icons.menu_open),
            ],
          ),
          SizedBox(
            height: 90,
            child: Scrollbar(
              child: ListView.builder(
                itemExtent: 60,
                  scrollDirection: Axis.horizontal,
                  itemCount: 60,
                  itemBuilder: (BuildContext context, int index) {
                    return MyInkWell(
                      onTap: () {  },
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(ImagesPath.group),
                        ),
                        const Text('Название сообщества', maxLines: 2,),
                      ],),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
