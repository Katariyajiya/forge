import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../buttons/glass_bubble.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchcontroller=TextEditingController();
  bool isFavraited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 30),
            child: Text("Forge",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Let's cook something \nunique today 🔥", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300
            ),),
          ),
          SizedBox(height: 10,),
          Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             children: [
               Expanded(
                 flex: 2,
                   child: TextField(
                     controller: _searchcontroller,
                   decoration:InputDecoration(
                     hintText: "Try Italian Lasagna",
                     prefixIcon: Icon(Icons.search),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(14),
                       borderSide: BorderSide(color: Colors.grey.shade300),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(14),
                       borderSide: BorderSide(color: Colors.grey.shade600),
                     ),
                   ),
                   ),
               )
             ],
           ),
         ),
          SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15,bottom: 12),
             child: Text("From Top Chef’s ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
           ),

           //Chefs Row
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             padding: EdgeInsets.only(left: 15,bottom: 15),
             child: Row(
               children: [
                 Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.yellow.shade50,
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.red.shade50,
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.green.shade50,
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.blue.shade50,
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.pink.shade50,
                   ),
                 ),
               ],
             ),
           ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Just For You ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),),
                Text("See All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),)
              ],
            ),
          ),

          //bottom just for you cards
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children:[
                          Container(
                            width: 180,
                            height: 220,
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
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                      child: Text("Carrot Cucumber Curd \nhealthy salad",
                                        style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                ),
                                Positioned(
                                  top: 148,
                                  left: 128,
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
                                Positioned(
                                  top: 185,
                                  left: 36,
                                  child: Row(children: [
                                    Icon(Icons.alarm,color: Colors.white,size: 19,),
                                    Text("1 hour |",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white)),
                                    SizedBox(width: 5,),
                                    Icon(Icons.local_fire_department_outlined,color: Colors.white,size: 19,),
                                    Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white))
                                  ],),
                                )

                              ],
                            ),
                                              ),
                          ),
                          Positioned(
                            top: 210,
                            left: 50,
                            child:  Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFFE5858),
                                gradient: LinearGradient(colors: [ Color(0xFFFF7D14), // Orange
                                  Color(0xFFF94327),
                                ])

                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Lets Try",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color: Colors.white),)),
                            ),
                          ),
                          // ElevatedButton(
                          //     onPressed: (){},
                          //     child: child)
                        ]
                      )
                  ),

                  Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 180,
                              height: 220,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/cake4.jpg",fit: BoxFit.cover,),
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
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd \nhealthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 148,
                                      left: 128,
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
                                    Positioned(
                                      top: 185,
                                      left: 36,
                                      child: Row(children: [
                                        Icon(Icons.alarm,color: Colors.white,size: 19,),
                                        Text("1 hour |",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white)),
                                        SizedBox(width: 5,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.white,size: 19,),
                                        Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white))
                                      ],),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210,
                              left: 50,
                              child:  Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFE5858),
                                    gradient: LinearGradient(colors: [ Color(0xFFFF7D14), // Orange
                                      Color(0xFFF94327),
                                    ])

                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Lets Try",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color: Colors.white),)),
                              ),
                            ),
                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      )
                  ),

                  Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 180,
                              height: 220,
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
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd \nhealthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 148,
                                      left: 128,
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
                                    Positioned(
                                      top: 185,
                                      left: 36,
                                      child: Row(children: [
                                        Icon(Icons.alarm,color: Colors.white,size: 19,),
                                        Text("1 hour |",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white)),
                                        SizedBox(width: 5,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.white,size: 19,),
                                        Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white))
                                      ],),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210,
                              left: 50,
                              child:  Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFE5858),
                                    gradient: LinearGradient(colors: [ Color(0xFFFF7D14), // Orange
                                      Color(0xFFF94327),
                                    ])

                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Lets Try",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color: Colors.white),)),
                              ),
                            ),
                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      )
                  ),

                  Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 180,
                              height: 220,
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
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd \nhealthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 148,
                                      left: 128,
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
                                    Positioned(
                                      top: 185,
                                      left: 36,
                                      child: Row(children: [
                                        Icon(Icons.alarm,color: Colors.white,size: 19,),
                                        Text("1 hour |",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white)),
                                        SizedBox(width: 5,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.white,size: 19,),
                                        Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white))
                                      ],),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210,
                              left: 50,
                              child:  Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFE5858),
                                    gradient: LinearGradient(colors: [ Color(0xFFFF7D14), // Orange
                                      Color(0xFFF94327),
                                    ])

                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Lets Try",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color: Colors.white),)),
                              ),
                            ),
                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      )
                  ),

                  Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 180,
                              height: 220,
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
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd \nhealthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 148,
                                      left: 128,
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
                                    Positioned(
                                      top: 185,
                                      left: 36,
                                      child: Row(children: [
                                        Icon(Icons.alarm,color: Colors.white,size: 19,),
                                        Text("1 hour |",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white)),
                                        SizedBox(width: 5,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.white,size: 19,),
                                        Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white))
                                      ],),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210,
                              left: 50,
                              child:  Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFE5858),
                                    gradient: LinearGradient(colors: [ Color(0xFFFF7D14), // Orange
                                      Color(0xFFF94327),
                                    ])

                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Lets Try",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color: Colors.white),)),
                              ),
                            ),
                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      )
                  ),

                  Container(
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 180,
                              height: 220,
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
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd \nhealthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 148,
                                      left: 128,
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
                                    Positioned(
                                      top: 185,
                                      left: 36,
                                      child: Row(children: [
                                        Icon(Icons.alarm,color: Colors.white,size: 19,),
                                        Text("1 hour |",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white)),
                                        SizedBox(width: 5,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.white,size: 19,),
                                        Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white))
                                      ],),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210,
                              left: 50,
                              child:  Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFFE5858),
                                    gradient: LinearGradient(colors: [ Color(0xFFFF7D14), // Orange
                                      Color(0xFFF94327),
                                    ])

                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Lets Try",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16 ,color: Colors.white),)),
                              ),
                            ),
                            // ElevatedButton(
                            //     onPressed: (){},
                            //     child: child)
                          ]
                      )
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
