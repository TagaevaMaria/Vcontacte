import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vkontacte/theme.dart';
import '/images_app/imagesPath.dart';
import 'auth_model.dart';



 class ScreenAut extends StatelessWidget {
   const ScreenAut({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     final model = AuthProvider.read(context)?.model;
     final telMailTextEditingController = TextEditingController(text: '123');
     String erroText = '';

     ///контролер поля ввода телефона или почты


     /// методы навигации + данные с контроллера

     void _registration() {
       telMailTextEditingController.text;
       Navigator.pushReplacementNamed(context, '/ScreenRegistration');
     }
     return Scaffold(
       resizeToAvoidBottomInset: false,
       body: Column(
         children: [
           Padding(
               padding: EdgeInsets.only(top: 100),
               child: Image.asset(ImagesPath.vk, height: 100, width: 100,)
           ),
           const Padding(
             padding: EdgeInsets.only(top: 40),
             child: Text(
               'Вход Вконтакте',
               style: TextStyle(fontSize: 30),
             ),
           ),
           MyTextField(
             labelText: 'Телефон и почта', textEditingController: model?.textEditingController(),
           ),
           const SizedBox(
             height: 5,
           ),
           Padding(
             padding: EdgeInsets.only(left: 20, right: 20),
             child: AuthButtonWidget(),


           ),
           _ErrorTextWidget(),
           Visibility(
             visible: erroText.isNotEmpty,
             child: Text(
               erroText,
               style: TextStyle(color: Colors.red),
             ),
           ),
           const SizedBox(
             height: 150,
           ),
           Padding(
             padding: const EdgeInsets.only(left: 20, right: 20),
             child: MyElevatedButton(
               text: 'Зарегистрироваться',
               color: MyColors.green,
               onpressed: () =>
                   Navigator.pushNamed(context, '/ScreenRegistration'),
             ),
           ),
         ],
       ),
     );
   }
 }
/// кнопка "Войти"
class AuthButtonWidget extends StatelessWidget {
   AuthButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.watch(context)?.model;
    final onpressed = ()=> model?.canStartAuth ==true ? ()=>model?.entrance(context) : null;
    return MyElevatedButton(
      text: 'Войти',
      color: MyColors.blue,
      onpressed: onpressed);
  }
}

 class _ErrorTextWidget extends StatelessWidget {
   const _ErrorTextWidget({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     final errortext = AuthProvider.watch(context)?.model.erroText;
     if(errortext == null){return SizedBox(height: 3,width: 3,);};
     return  Padding(
       padding: const EdgeInsets.only(bottom: 5),
       child: Text(errortext, style: TextStyle(fontSize: 5),),
     );
   }
 }
 