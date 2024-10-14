import 'package:brozerplaylist/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:brozerplaylist/consts/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: bgColor,
            ),
          ),
        ],
        leading: const Icon(
          Icons.sort_rounded,
          color: bgColor,
        ),
        title: Text(
          'BrozerPlayList',
          style: ourStyle(size: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text(
                  'Music name',
                  style: ourStyle(family: bold, size: 15),
                ),
                subtitle: Text(
                  'Artist name',
                  style: ourStyle(family: light, size: 12),
                ),
                trailing: const Icon(
                  Icons.play_arrow,
                  color: whiteColor,
                  size: 26,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
