import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier {

  textEditingController(){}


  final telMailTextEditingController = TextEditingController(text: '123');
  String _erroText = '';
  String get erroText => _erroText;
  Future <void> auth(BuildContext context) async {}

  bool _isAuthProgress = false;
  bool  get canStartAuth{return !_isAuthProgress; }



   void entrance(BuildContext context) {

      Navigator.pushNamed(context, '/HomeScreen');




    void _registration() {
      telMailTextEditingController.text;
      Navigator.pushReplacementNamed(context, '/ScreenRegistration');
    }


  }


}


/// сам инхерид
class AuthProvider extends InheritedNotifier {
  final AuthModel model;
   AuthProvider( {
    Key? key,required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

   static AuthProvider? watch (BuildContext context) {return context.dependOnInheritedWidgetOfExactType<AuthProvider>();}  /// получает инхерит и подписывает на его изминения
  static AuthProvider? read (BuildContext context) {
     final widget  =  context.getElementForInheritedWidgetOfExactType<AuthProvider>()?.widget; return widget is AuthProvider ? widget : null; } ///
/// получает элемент инхерит виджет, из него можно получить сам инхерит без подписи на изминения.


}


