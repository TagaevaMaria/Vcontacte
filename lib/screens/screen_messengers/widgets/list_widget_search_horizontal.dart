import 'package:flutter/material.dart';
import '../../../widgets/inkWell.dart';
import '../screen_serch/screen_search_user.dart';


/// делаю для переиспользования


class ListWidgetHorizontal extends StatefulWidget {
  final List index;
  final Object myclass;

  ListWidgetHorizontal({Key? key, required this.index, required this.myclass}) : super(key: key);

  @override
  State<ListWidgetHorizontal> createState() => _ListWidgethHorizontalState();

}

class _ListWidgethHorizontalState extends State<ListWidgetHorizontal> {
  List<Contact> list = [Contact(avatar: '', name: '', id: 0)];


  @override
  Widget build(BuildContext context) {
    final ff = list.first.copyWith(name: 'dsdsds');
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final contact = list[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
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
                  Text(contact.name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



/*
/// Горизонтальный скрол в поиске!!!

class ListWidgetSearchHorizontal extends StatefulWidget {
  const ListWidgetSearchHorizontal({Key? key}) : super(key: key);

  @override
  State<ListWidgetSearchHorizontal> createState() =>
      _ListWidgetSearchHorizontalState();
}

class _ListWidgetSearchHorizontalState
    extends State<ListWidgetSearchHorizontal> {



  final _listContactSearch = [
    Contact(avatar: ImagesPath.ezhic, name: 'конь Конский', id: 1),
    Contact(avatar: ImagesPath.belka, name: 'Гусь Краснопятый', id: 2),
    Contact(avatar: ImagesPath.gosha, name: 'Гоша Утюжков', id: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final contact = _listContactSearch[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
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
                  Text(contact.name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}*/



