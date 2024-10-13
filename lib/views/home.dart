import 'package:flutter/material.dart';
import 'package:brozerplaylist/consts/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BrozerPlayList'),
      ),
    );
  }
}
