import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forge/pages/all_receipes.dart';
import 'package:forge/pages/favourite.dart';
import 'package:forge/utils/searchbar.dart';

import '../model/bot.dart';
import '../pages/chef_detail.dart';
import '../pages/custom_search.dart';
import 'glass_bubble.dart';

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _selectedIndex = 0;
  TextEditingController _searchcontroller=TextEditingController();
  // Screens for each tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // update selected tab
    });
  }

  @override
  Widget build(BuildContext context)   {
    final List<Widget> _pages = [
      Column(
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
           Searchbar(),
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
                GestureDetector(
                  onTap:()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>ChefDetail())),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow.shade50,
                    ),
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
                GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>AllReceipes()));
                      },
                    child: Text("See All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),))
              ],
            ),
          ),

          //bottom just for you cards
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  Container(
                      width: 170,
                      height: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 190,
                              height: 290,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/indian1.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 3, // horizontal blur
                                          sigmaY: 3, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 210,
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
                                    Positioned(
                                      top: 250,
                                      left: 22,
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
                              top: 280,
                              left: 36,
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
                  SizedBox(width: 7,),
                  Container(
                      width: 170,
                      height: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 190,
                              height: 290,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/salad6.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 3, // horizontal blur
                                          sigmaY: 3, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 210,
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
                                    Positioned(
                                      top: 250,
                                      left: 22,
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
                              top: 280,
                              left: 36,
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
                  SizedBox(width: 7,),
                  Container(
                      width: 170,
                      height: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 190,
                              height: 290,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/indian1.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 3, // horizontal blur
                                          sigmaY: 3, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 210,
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
                                    Positioned(
                                      top: 250,
                                      left: 22,
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
                              top: 280,
                              left: 36,
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
                  SizedBox(width: 7,),
                  Container(
                      width: 170,
                      height: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 190,
                              height: 290,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/indian1.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 3, // horizontal blur
                                          sigmaY: 3, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 210,
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
                                    Positioned(
                                      top: 250,
                                      left: 22,
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
                              top: 280,
                              left: 36,
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
                  SizedBox(width: 7,),
                  Container(
                      width: 170,
                      height: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 190,
                              height: 290,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/salad6.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 3, // horizontal blur
                                          sigmaY: 3, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 210,
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
                                    Positioned(
                                      top: 250,
                                      left: 22,
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
                              top: 280,
                              left: 36,
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
                  SizedBox(width: 7,),
                  Container(
                      width: 170,
                      height: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Stack(
                          children:[
                            Container(
                              width: 190,
                              height: 290,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset("assets/images/indian1.jpg",fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 3, // horizontal blur
                                          sigmaY: 3, // vertical blur
                                        ),
                                        child: Container(
                                          color: Colors.black.withOpacity(0), // keep transparent
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text("Carrot Cucumber Curd healthy salad",
                                            style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500),)),
                                    ),
                                    Positioned(
                                      top: 210,
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
                                    Positioned(
                                      top: 250,
                                      left: 22,
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
                              top: 280,
                              left: 36,
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
      Bot(),
      Favourite()
    ];
    return Scaffold(

      body: _pages[_selectedIndex], // display selected page

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.grey,

        currentIndex: _selectedIndex, // highlighted tab
        onTap: _onItemTapped,         // handle tap

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Assistant",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Liked",
          ),
        ],
      ),
    );
  }
}
