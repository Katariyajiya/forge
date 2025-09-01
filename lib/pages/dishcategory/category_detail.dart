import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forge/apiIntegrationLearning/api_services.dart';
import 'package:forge/apiIntegrationLearning/cake_model.dart';
import 'package:forge/apiIntegrationLearning/mocktaiil_model.dart';
import 'package:forge/utils/custom_appbar.dart';

import '../../apiIntegrationLearning/MultiplePostModel.dart';
import '../../utils/glass_bubble.dart';
class ChefDetail extends StatefulWidget {
  const ChefDetail({super.key});

  @override
  State<ChefDetail> createState() => _ChefDetailState();
}

class _ChefDetailState extends State<ChefDetail> {

  List<CakeModel> cakeModel =[];
  List<MocktaiilModel> mocktailModel =[];

  bool isReady = false;
  List<CakeModel> postModel = [];
  _getCakeModel(){
    isReady = true;
    ApiServices().getCakeModel().then((value){
      setState(() {
        postModel = value!;
        isReady=false;
      });
    });
  }
  _getMocktailModel(){
    isReady = true;
    ApiServices().getMocktaiilModel().then((value){
      setState(() {
        mocktailModel = value!;
        isReady=false;
      });
    });
  }
  @override
  void initState() {
    _getCakeModel();
    _getMocktailModel();
    super.initState();
  }
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:CustomAppbar()

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //chef Name and Photo
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow.shade100,
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text("Best of Sanjiv Kapoor",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),)
                ],
              ),
            ),
        
            //receipes
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Stack(
                          children:[
                            Container(
                              width: 170,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/salad7.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1.5, // horizontal blur
                                          sigmaY: 1.5, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 115,
                                      child: GlassBubble(
                                        child: Container(
                                          height: 22,
                                          // width: 30,
                                          decoration: const BoxDecoration(
                                            //shape: BoxShape.circle,
                                          ),
                                          child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      ),
                      SizedBox(height: 10,),
                      Stack(
                          children:[
                            Container(
                              width: 170,
                              height: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/cake2.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1.5, // horizontal blur
                                          sigmaY: 1.5, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 115,
                                      child: GlassBubble(
                                        child: Container(
                                          height: 22,
                                          // width: 30,
                                          decoration: const BoxDecoration(
                                            //shape: BoxShape.circle,
                                          ),
                                          child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      ),
                      SizedBox(height: 10,),
                      Stack(
                          children:[
                            Container(
                              width: 170,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/salad7.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1.5, // horizontal blur
                                          sigmaY: 1.5, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 115,
                                      child: GlassBubble(
                                        child: Container(
                                          height: 22,
                                          // width: 30,
                                          decoration: const BoxDecoration(
                                            //shape: BoxShape.circle,
                                          ),
                                          child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      ),
                      SizedBox(height: 10,),
                      Stack(
                          children:[
                            Container(
                              width: 170,
                              height: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/cake2.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 1.5, // horizontal blur
                                          sigmaY: 1.5, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 115,
                                      child: GlassBubble(
                                        child: Container(
                                          height: 22,
                                          // width: 30,
                                          decoration: const BoxDecoration(
                                            //shape: BoxShape.circle,
                                          ),
                                          child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                    ),


                                  ],
                                ),
                              ),
                            ),

                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      ),


                    ],

                  ),
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Stack(
                        children:[
                          Container(
                            width: 170,
                            height: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset("assets/images/indian1.jpg",fit: BoxFit.cover,),
                                  ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 1.5, // horizontal blur
                                        sigmaY: 1.5, // vertical blur
                                      ),
                                      child: Container(
                                        color: Colors.black.withOpacity(0), // keep transparent
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 115,
                                    child: GlassBubble(
                                      child: Container(
                                        height: 22,
                                        // width: 30,
                                        decoration: const BoxDecoration(
                                          //shape: BoxShape.circle,
                                        ),
                                        child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Carrot Cucumber Curd healthy salad",
                                          style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                  ),


                                ],
                              ),
                            ),
                          ),

                          // ElevatedButton(
                          //     onPressed: (){},
                          //     child: child)
                        ]
                    ),
                    SizedBox(height: 10,),
                    Stack(
                        children:[
                          Container(
                            width: 170,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset("assets/images/salad7.jpg",fit: BoxFit.cover,),
                                  ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 1.5, // horizontal blur
                                        sigmaY: 1.5, // vertical blur
                                      ),
                                      child: Container(
                                        color: Colors.black.withOpacity(0), // keep transparent
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 115,
                                    child: GlassBubble(
                                      child: Container(
                                        height: 22,
                                        // width: 30,
                                        decoration: const BoxDecoration(
                                          //shape: BoxShape.circle,
                                        ),
                                        child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Carrot Cucumber Curd healthy salad",
                                          style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                  ),


                                ],
                              ),
                            ),
                          ),

                          // ElevatedButton(
                          //     onPressed: (){},
                          //     child: child)
                        ]
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 10,),
                    Stack(
                        children:[
                          Container(
                            width: 170,
                            height: 250,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset("assets/images/cake2.jpg",fit: BoxFit.cover,),
                                  ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 1.5, // horizontal blur
                                        sigmaY: 1.5, // vertical blur
                                      ),
                                      child: Container(
                                        color: Colors.black.withOpacity(0), // keep transparent
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 115,
                                    child: GlassBubble(
                                      child: Container(
                                        height: 22,
                                        // width: 30,
                                        decoration: const BoxDecoration(
                                          //shape: BoxShape.circle,
                                        ),
                                        child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Carrot Cucumber Curd healthy salad",
                                          style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                  ),


                                ],
                              ),
                            ),
                          ),

                          // ElevatedButton(
                          //     onPressed: (){},
                          //     child: child)
                        ]
                    ),
                    SizedBox(height: 10,),
                    Stack(
                        children:[
                          Container(
                            width: 170,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset("assets/images/salad7.jpg",fit: BoxFit.cover,),
                                  ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 1.5, // horizontal blur
                                        sigmaY: 1.5, // vertical blur
                                      ),
                                      child: Container(
                                        color: Colors.black.withOpacity(0), // keep transparent
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 115,
                                    child: GlassBubble(
                                      child: Container(
                                        height: 22,
                                        // width: 30,
                                        decoration: const BoxDecoration(
                                          //shape: BoxShape.circle,
                                        ),
                                        child: const Icon(Icons.favorite_border, color: Colors.white, size: 22,),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Carrot Cucumber Curd healthy salad",
                                          style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                  ),


                                ],
                              ),
                            ),
                          ),

                          // ElevatedButton(
                          //     onPressed: (){},
                          //     child: child)
                        ]
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}
