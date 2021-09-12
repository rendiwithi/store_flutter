import 'package:flutter/material.dart';
import 'package:ui_store_flutter/constant.dart';
import 'package:ui_store_flutter/screens/home/components/content_home.dart';

import 'components/search_home.dart';
import 'components/title_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 15,
          right: 15,
        ),
        color: kBackgroundColor,
        child: ListView(
          children: [
            TitleHome(),
            SearchHome(),
            ContentHome(),
          ],
        ),
      ),
    );
  }
}
