import 'package:flutter/material.dart';

class UserDetelisWidgetFoto extends StatelessWidget {
  const UserDetelisWidgetFoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: IndexedStack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Фото'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Видео'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Музыка'),
                ),
              ),
            ],
          ),
          Column(
            children: [],
          )
        ],
      ),
    );

  }
}



class _ListViewFoto extends StatelessWidget {
  const _ListViewFoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('FOTO');
  }
}

class _ListViewVideo extends StatelessWidget {
  const _ListViewVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('VIDEO');
  }
}

class _ListViewMusic extends StatelessWidget {
  const _ListViewMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Music');
  }
}
