import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_mate/widgets/filter_icon.dart';
import 'package:travel_mate/widgets/home_search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: HomeSearchBar(),
                ),
                SizedBox(
                  width: 14,
                ),
                FilterIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
