import 'package:flutter/material.dart';

/// Стиль кнопок. Нужно менять только цвета и текст.
class MyElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onpressed;

  const MyElevatedButton({
    Key? key,
    required this.text,
    required this.color, required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          onPressed: onpressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ],
          )),
    );
  }
}

/// цвета
abstract class MyColors{
  static final blue = Color.fromRGBO(1, 119, 254, 1);
  static final green = Color.fromRGBO(12, 218, 81, 1);
  static final grey = Colors.grey;
  static final white = Colors.white;
  static final darkGrey = Colors.black26;
  static final lightGray = Colors.white30;
  static final black54 = Colors.black54;

}

/// единный MyTextField
class MyTextField extends StatelessWidget {
    final textEditingController;
  final String labelText;
   MyTextField({
    Key? key, required this.labelText, required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: textEditingController,
        autofocus: true,
        decoration: InputDecoration(
          fillColor: Colors.indigo,
          labelText: labelText,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

/// иконки пользователь онлайн или не онлайн.
abstract  class IkonsApp {

  static const online =  Icons.trip_origin;
  static const  notOnline = Icons.circle;


}


