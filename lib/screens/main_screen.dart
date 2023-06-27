import 'package:flutter/material.dart';
import 'package:vkontacte/screens/screen_clips.dart';
import 'package:vkontacte/screens/screen_home/screen_home_widget.dart';

import 'package:vkontacte/screens/screen_messengers/screen_messengers.dart';
import 'package:vkontacte/screens/screen_service/screen_service.dart';

import 'package:vkontacte/theme.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  void onTapItem(int index) {
    if (_currentIndex == index) return;
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack( index: _currentIndex,
      children:     [
        ScreenHomeWidget(),
        ScreenService(),
        ScreenMessengers(),
        ScreenClips(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.blue,
        unselectedItemColor: MyColors.grey,
        selectedFontSize: 13,
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: onTapItem,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Главная'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pattern_sharp,
              ),
              label: 'Сервисы'),
          BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline), label: 'Мессенджеры'),
          BottomNavigationBarItem(
              icon: Icon(Icons.swipe_up_outlined), label: 'Клипы'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection), label: 'Видео'),
        ],
      ),
    );
  }
}
