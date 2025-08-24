import 'package:flutter/material.dart';
import 'package:forge/pages/home_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  var listRadius = [50.0, 55.0, 60.0, 65.0];
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });

    _animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [

          //Images collage
          Expanded(
            child: Stack(
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
                                  height: 110,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/cake2.jpg',
                                  width: 150,
                                  height: 310,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/indian1.jpg',
                                  width: 150,
                                  height: 120,
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
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/salad6.jpg',
                                  width: 160,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/pancake2.jpg',
                                  width: 160,
                                  height: 300,
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
                  height: 200,
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
                // Inside your Stack (replace the Positioned chef cap button with this):
                Positioned(
                  bottom: 85,
                  left: screenWidth /7.7,
                  child: Column(
                    children: [
                      // Animated Button
                      Container(
                        // width: 200,
                        // height: 200,
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
                                    color: Color.fromRGBO(255, 138, 128, 1.0)
                                        .withOpacity(1.0 - _animationController.value),
                                  ),
                                ))
                                    .toList(),
                              ),
                            ),
                            CircleAvatar(
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
                                        MaterialPageRoute(builder: (context) => HomePage()),
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
                          ],
                        ),
                      ),
                      Text(
                        'ForgeKitchenStories',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Browse 1000+ unique recipes of different \n'
                            'cuisines from the best chefs.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),

          //Text
          // Text('ForgeKitchenStories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          // Text('Browse 1000+ unique recipes of different \n       cuisines from the best chefs.',style: TextStyle(fontWeight: FontWeight.w200),),

        // SizedBox(height: 20),
        //   GestureDetector(
        //     onTap: (){
        //       print('continue with google tapped');
        //       //firebase email authorization to be done on 4th june
        //     },
        //     child: Container(
        //       width: 300,
        //       height: 50,
        //       padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        //       decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(20),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Colors.black12,
        //             blurRadius: 4,
        //             offset: Offset(0, 2),
        //           ),
        //         ],
        //         border: Border.all(color: Colors.grey.shade300),
        //       ),
        //       child: Row(
        //         mainAxisSize: MainAxisSize.min,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Image.asset(
        //             'assets/images/google.png',
        //             width: 24,
        //             height: 24,
        //           ),
        //           SizedBox(width: 12),
        //           Text(
        //             'Continue with Google',
        //             style: TextStyle(
        //               fontSize: 16,
        //               color: Colors.black87,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   )

        ],
      ),
    );
  }
}
