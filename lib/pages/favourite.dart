import 'package:flutter/material.dart';
import 'package:forge/utils/custom_appbar.dart';
import 'package:forge/utils/glass_bubble.dart';

import '../utils/searchbar.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 350,
              child: Searchbar()
            ),
            SizedBox(height: 15,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Stack(
                      children:[
                        Container(
                          height: 250,
                          width: 350,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20) ),
                                child: Image.asset("assets/images/indian1.jpg",fit: BoxFit.cover,))),
                        ),
                        Positioned(
                             top: 190,
                            left: 10,
                            child: GlassBubble(

                                child: Text("Coal Smoked North Indian Makhani Panner",style:TextStyle(
                                  color: Colors.white
                                ),)))
                    ]
                    ),
                    SizedBox(height: 7,),
                    Stack(
                        children:[
                          Container(
                            height: 250,
                            width: 350,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20) ),
                                    child: Image.asset("assets/images/salad7.jpg",fit: BoxFit.cover,))),
                          ),
                          Positioned(
                              top: 190,
                              left: 10,
                              child: GlassBubble(

                                  child: Text("Coal Smoked North Indian Makhani Panner",style:TextStyle(
                                      color: Colors.white
                                  ),)))
                        ]
                    ),
                    SizedBox(height: 7,),
                    Stack(
                        children:[
                          Container(
                            height: 250,
                            width: 350,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20) ),
                                    child: Image.asset("assets/images/cake4.jpg",fit: BoxFit.cover,))),
                          ),
                          Positioned(
                              top: 190,
                              left: 10,
                              child: GlassBubble(

                                  child: Text("Coal Smoked North Indian Makhani Panner",style:TextStyle(
                                      color: Colors.white
                                  ),)))
                        ]
                    ),
                    SizedBox(height: 7,),
                    Stack(
                        children:[
                          Container(
                            height: 250,
                            width: 350,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20) ),
                                    child: Image.asset("assets/images/indian1.jpg",fit: BoxFit.cover,))),
                          ),
                          Positioned(
                              top: 190,
                              left: 10,
                              child: GlassBubble(

                                  child: Text("Coal Smoked North Indian Makhani Panner",style:TextStyle(
                                      color: Colors.white
                                  ),)))
                        ]
                    ),
                    SizedBox(height: 7,),
                    Stack(
                        children:[
                          Container(
                            height: 250,
                            width: 350,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20) ),
                                    child: Image.asset("assets/images/salad7.jpg",fit: BoxFit.cover,))),
                          ),
                          Positioned(
                              top: 190,
                              left: 10,
                              child: GlassBubble(

                                  child: Text("Coal Smoked North Indian Makhani Panner",style:TextStyle(
                                      color: Colors.white
                                  ),)))
                        ]
                    ),
                    SizedBox(height: 7,),
                    Stack(
                        children:[
                          Container(
                            height: 250,
                            width: 350,
                            child: Align(
                                alignment: Alignment.topCenter,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20),bottomLeft: Radius.circular(20) ),
                                    child: Image.asset("assets/images/cake4.jpg",fit: BoxFit.cover,))),
                          ),
                          Positioned(
                              top: 190,
                              left: 10,
                              child: GlassBubble(

                                  child: Text("Coal Smoked North Indian Makhani Panner",style:TextStyle(
                                      color: Colors.white
                                  ),)))
                        ]
                    ),
                    SizedBox(height: 7,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
