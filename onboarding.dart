import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  var listRadius = [50.0, 10.0, 150.0, 200.0];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds:3 ),
    )..addListener(() {
      setState(() {});
    });

    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container (
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 8,
              child: Container(
                  height: 300,
                  child: Image(
                      image: AssetImage('assets/images/smile.png'))),
            ),
            Positioned(
                top: 60,
                left: 60,
                child: Text('Stay On Track,\n Effortlessly',
                  style: TextStyle(
                      fontFamily: 'Tinos',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 50),)),
            Positioned(
                top: 225,
                left: 190,
                child: Container(
                  child: Text('   Never miss what \n  '
                      ' matters. Let us remind \n '
                      ' you at just the right time.',
                    style: TextStyle(
                        fontFamily:'Tinos',
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: 18),),
                )),
            Positioned(
                top: 260,
                left: 3,
                child: Container(
                    height: 500,
                    width: 375,
                    child: Image(image: AssetImage('assets/images/onboarding_image.png'),))
            ),

            Positioned(
              top: 600,
              left: 60,
              child: Container(
                width: 250,
                height: 250,
                child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: listRadius.map((radius) => Container(
                            width: radius * _animationController.value * 2,
                            height: radius * _animationController.value * 2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(255, 236,221,1).withOpacity(1.0 - _animationController.value),
                            ),
                          )).toList(),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          //soon to be created
                        },
                        child: Container(
                            height: 200,
                            child: Image(image: AssetImage('assets/images/startbutton.png'))),
                      ),]
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 251, 232, 1)
        ),
      ),
    );
  }
}
