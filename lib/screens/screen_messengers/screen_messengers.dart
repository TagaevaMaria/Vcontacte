import 'package:flutter/material.dart';
import 'package:vkontacte/images_app/imagesPath.dart';
import 'package:vkontacte/screens/screen_messengers/screen_serch/screen_search_user.dart';
import 'package:vkontacte/theme.dart';

import '../../widgets/inkWell.dart';

/// хранит информацию о другом пользователе.
class Vk {
  final String imageName;
  final String nickFriend;
  final String time;
  final String lastSms;
  final IconData online;
  final IconData notOnline;

  Vk(
      {required this.imageName,
      required this.nickFriend,
      required this.time,
      required this.lastSms,
      required this.online,
      required this.notOnline});
}

class ScreenMessengers extends StatelessWidget {
  const ScreenMessengers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// методы навигации
    void search() {
      Navigator.pushNamed(context, '/ScreenSearchUser');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset(ImagesPath.ezhic, height: 50, width: 50),
        title: const Text(
          'Чаты',
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: MyColors.blue,
              onPressed: () {},
              icon: const Icon(
                Icons.add_ic_call_outlined,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.messenger,
                size: 30,
              ),
              color: MyColors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: MyColors.blue,
              onPressed: search,
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: ListWidgetMessengers(),
    );
  }
}

/// Основной список - вертикальный, лист контактов.
class ListWidgetMessengers extends StatefulWidget {

  ListWidgetMessengers({Key? key}) : super(key: key);

  @override
  State<ListWidgetMessengers> createState() => _ListWidgetMessengersState();
}

class _ListWidgetMessengersState extends State<ListWidgetMessengers> {
  final _vkList = [
    Vk(
        imageName: ImagesPath.ezhic,
        nickFriend: 'Александр Минеев',
        time: '2д',
        lastSms: 'Вы: привет! Как твои дела? Как настроение?',
        online: IkonsApp.online,
        notOnline: IkonsApp.notOnline),
    Vk(
        imageName: ImagesPath.gosha,
        nickFriend: 'Георгий Коновалов',
        time: '3н',
        lastSms: 'Вы: привет! Как твои дела? Как настроение?',
        online: IkonsApp.online,
        notOnline: IkonsApp.notOnline),
    Vk(
        imageName: ImagesPath.ylija_kusenko,
        nickFriend: 'Юлия Куценко',
        time: '1н',
        lastSms: 'Пожалуйста',
        online: IkonsApp.online,
        notOnline: IkonsApp.notOnline),
    Vk(
        imageName: ImagesPath.ksenija_cinkova,
        nickFriend: 'Ксения Цынкова',
        time: '1н',
        lastSms: 'Спасибо!))',
        online: IkonsApp.online,
        notOnline: IkonsApp.notOnline),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _vkList.length,
        itemBuilder: (BuildContext context, int index) {
          final vk = _vkList[index];
          return Column(
            children: [
              Visibility(
                visible: index == 0,
                child: ListViewFriendHorizontal(),
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          vk.imageName,
                          height: 50,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vk.nickFriend,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Wrap(
                                children: [
                                  Wrap(children: [
                                    Text(
                                      vk.lastSms,
                                      maxLines: 1,
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(vk.time),
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: MyColors.grey,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
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
            ],
          );
        });
  }
}

/// Горизонтальный скрол

class ListViewFriendHorizontal extends StatelessWidget {
  final _listContact = [
    Contact(avatar: ImagesPath.ezhic, name: 'Александр Минуев', id: 1),
    Contact(avatar: ImagesPath.belka, name: 'Мария Таваева', id: 2),
    Contact(avatar: ImagesPath.gosha, name: 'Гоша РазрабПсих', id: 3),
  ];

  ListViewFriendHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: _listContact.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final contact = _listContact[index];
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: MyInkWell(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    contact.avatar,
                    fit: BoxFit.fill,
                    height: 100,
                  ),
                  Text('data')
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
