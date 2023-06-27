import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vkontacte/theme.dart';
import '../../../images_app/imagesPath.dart';
import '../../../widgets/inkWell.dart';
import '../widgets/list_widget_search_horizontal.dart';


class Contact {
  final int id;
  final String avatar;
  final String name;

  Contact({required this.avatar, required this.name, required this.id});

  Contact copyWith({
    int? id,
    String? avatar,
    String? name,
  }) {
    return Contact(
      id: id ?? this.id,
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
    );
  }
}
/// Тело верстки
class ScreenSearchUser extends StatefulWidget {
  ScreenSearchUser({Key? key}) : super(key: key);

  @override
  State<ScreenSearchUser> createState() => _ScreenSearchUserState();
}

 class _ScreenSearchUserState extends State<ScreenSearchUser> {
   static final _listContactSearch = [
    Contact(avatar: ImagesPath.ezhic, name: 'конь Конский', id: 1),
    Contact(avatar: ImagesPath.belka, name: 'Гусь Краснопятый', id: 2),
    Contact(avatar: ImagesPath.gosha, name: 'Гоша Утюжков', id: 3),
  ];

  var _filterContact = <Contact>[];
  void _searchContact() {
    final query =_searchController.text;


    if(query.isNotEmpty) {
      _filterContact = _listContactSearch.where((Contact contact) {return contact.name.toLowerCase().contains(query.toLowerCase());

      }).toList();
    } else {
      _filterContact = _listContactSearch;
    }
    setState(() {

    });

  }

  final _searchController = TextEditingController();
  @override
  void initState() {
    _filterContact = _listContactSearch;
    _searchController.addListener(_searchContact);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: MyColors.blue,
        ),
        title: CupertinoSearchTextField(
          controller: _searchController,
          suffixIcon: const Icon(CupertinoIcons.mic_solid),
          placeholder: 'Поиск',
        )

      ),
      body:ListViewContact(filterContact: _filterContact),
    );
  }
}


/// лист контактов из которого я ищу данные.
class ListViewContact extends StatefulWidget {
  const ListViewContact({
    Key? key,
    required List<Contact> filterContact,
  }) : _filterContact = filterContact, super(key: key);

  final List<Contact> _filterContact;

  @override
  State<ListViewContact> createState() => _ListViewContactState();
}

class _ListViewContactState extends State<ListViewContact> {
  void _onUserTap(int index) {
    final id = _ScreenSearchUserState._listContactSearch[index].id;

    Navigator.pushNamed(context, '/UserDetailsWidget', arguments: id,
   );
  }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget._filterContact.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final contact = widget._filterContact[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyInkWell(
              onTap: () => _onUserTap(index),
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




