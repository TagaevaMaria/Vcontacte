import 'package:flutter/material.dart';
import '../../../../images_app/imagesPath.dart';
import '../../../../theme.dart';



class UserDetalisCommunication extends StatelessWidget {
  const UserDetalisCommunication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
        child: Column(
          children: [
             Image(
              image: AssetImage(ImagesPath.ezhic),
              height: 100,
              width: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Имя пользователя',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Text('Статус пользователя'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Новокузнецк',
                    style: TextStyle(fontSize: 16, color: MyColors.grey),
                  ),
                ),
                Text(
                  'Подробнее',
                  style: TextStyle(fontSize: 16, color: MyColors.grey),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.messenger_outline),
                    label: Text('Сообщение'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Icon(Icons.call),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: OutlinedButton(onPressed: (){}, child: Icon(Icons.perm_identity_sharp),),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: OutlinedButton(onPressed: (){}, child: Icon(Icons.circle_outlined),),
                ),
              ],
            ),
          ],
        ));
  }
}
