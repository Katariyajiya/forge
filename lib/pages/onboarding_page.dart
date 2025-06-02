import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          //Images collage
          Stack(
            children: [
              // Image Collage
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 10, right: 15),
                    width: screenWidth,
                    height: screenHeight / 1.38,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/salad7.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/cake2.jpg',
                                width: 150,
                                height: 280,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/indian1.jpg',
                                width: 150,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/cake4.jpg',
                                width: 160,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/salad6.jpg',
                                width: 160,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/pancake2.jpg',
                                width: 160,
                                height: 270,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Gradient Overlay
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),

              Positioned(
                top: screenHeight / 1.7,
                left: screenWidth / 2.7,
                child: Material(
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

          //Text
          Text('ForgeKitchenStories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          Text('Browse 1000+ unique recipes of different \n       cuisines from the best chefs.',style: TextStyle(fontWeight: FontWeight.w200),),

          SizedBox(height: 20),

          //continue with google
          GestureDetector(
            onTap: (){
              print('continue with google tapped');
              //firebase email authorization to be done on 4th june
            },
            child: Container(
              width: 300,
              height: 50,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Continue with Google',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
