import 'package:flutter/material.dart';
import 'package:vkontacte/images_app/imagesPath.dart';

import '../../../theme.dart';
import 'auth_model.dart';

class ScreenRegistration extends StatelessWidget {
  const ScreenRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textEditingController = TextEditingController();


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImagesPath.vk, height: 35,),
                  const Text('ID')
                ],
              ),
            ),
            const Text(
              'Введите номер',
              style: TextStyle(fontSize: 30),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Ваш номер телефона будет использоваться для входа в аккаунт',
                textAlign: TextAlign.center,
              ),
            ),
            MyTextField(labelText: 'Номер телефона', textEditingController: _textEditingController, ),
            const SizedBox(
              height: 300,
            ),
            MyElevatedButton(
                text: 'Продолжить', color: MyColors.blue, onpressed: () {}),






            const Text(
              'Нажимая "Продолжить" вы принимаете пользовательское соглашение и политику конфидициальности ', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
    }




