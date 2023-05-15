import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/a.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
