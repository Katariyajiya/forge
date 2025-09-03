import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:forge/pages/dishCategory/category_detail.dart';

import '../../utils/bottom_navigation_bar.dart';
import '../../utils/glass_bubble.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavExample(),
      backgroundColor: Colors.white,
      body: BottomNavExample()
    );
  }
}
