import 'package:flutter/material.dart';
import 'home_page.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  var listRadius = [50.0, 10.0, 150.0, 200.0];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..addListener(() {
      setState(() {});
    });

    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: screenHeight / 1.7,
            left: screenWidth / 2.7,
            child: Container(
              width: 250,
              height: 250,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: listRadius
                          .map((radius) => Container(
                        width: radius * (1 + _animationController.value),
                        height: radius * (1 + _animationController.value),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 236, 221, 1)
                              .withOpacity(
                              1.0 - _animationController.value),
                        ),
                      ))
                          .toList(),
                    ),
                  ),
                  Material(
                    elevation: 10,
                    shape: const CircleBorder(),
                    shadowColor: Colors.redAccent,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.redAccent,
                      child: Transform.rotate(
                        angle: -0.6,
                        child: Padding(
                          padding: const EdgeInsets.all(21.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/chef.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
