import 'package:flutter/material.dart';
import '../../images_app/imagesPath.dart';
import '../../theme.dart';
import '../../widgets/activityTools.dart';
import 'package:path_provider/path_provider.dart';

class ScreenHomeWidget extends StatelessWidget {
  const ScreenHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(ImagesPath.ezhic, height: 50, width: 50),
        title: const Text(
          'Главная',
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: MyColors.blue,
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_outline,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
              color: MyColors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: MyColors.blue,
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset(
                          ImagesPath.group,
                          height: 50,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Название сообщества',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Wrap(
                                children: [
                                  Wrap(children: [
                                    const Text('сегодня в 7:30'),
                                    RichText(
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text:
                                                'Тут какой то текст. Новости из группы. Поставить ограничение, например не больше трех строк',
                                            style:
                                                TextStyle(color: Colors.black)),
                                        TextSpan(
                                            text: ' Показать еще',
                                            style:
                                                TextStyle(color: Colors.blue))
                                      ]),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.menu,
                        size: 20,
                        color: MyColors.blue,
                      ),
                    ],
                  ),
                  Positioned.fill(
                      child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                          )))
                ],
              ),
            ),
            Image.asset(ImagesPath.group),
            Row(
              children: [
                Ink(
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(),
                        color: MyColors.lightGray),
                    child: ActivityTools(
                      icon: Icon(
                        Icons.heart_broken,
                        color: MyColors.darkGrey,
                      ),
                      quantity: Text(
                        '83',
                        style: TextStyle(color: MyColors.black54),
                      ),
                    )),
                 ActivityTools(
                  icon: Icon(Icons.messenger,  color: MyColors.darkGrey,),
                  quantity: Text('83',
                    style: TextStyle(color: MyColors.black54),),
                ),
                ActivityTools(icon: Icon(Icons.arrow_circle_right_outlined,  color: MyColors.darkGrey,), quantity: Text('36',
                  style: TextStyle(color: MyColors.black54),),),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.remove_red_eye_outlined,
                    color: MyColors.grey,
                  ),
                ),
              ],
            )
          ],
        );
      }),
    );
  }



 final valueKey = const ValueKey('Masha');
}

/// тренируюсь.

