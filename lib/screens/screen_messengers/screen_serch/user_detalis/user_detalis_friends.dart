
import 'package:flutter/material.dart';

class FrendsUser extends StatelessWidget {
  const FrendsUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text('86 друзей'),
          SizedBox(
            width: 250,
            height: 40,
          ),
          Icon(Icons.account_circle),
        ],
      ),
    );
  }
}
