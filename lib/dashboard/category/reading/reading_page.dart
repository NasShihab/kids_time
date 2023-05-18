import 'package:flutter/material.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Reading Page'),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
