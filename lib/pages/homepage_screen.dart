import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forge/pages/dishCategory/cake_list.dart';
import 'package:forge/pages/favourite/favourite_icon.dart';

import '../../apiIntegrationLearning/MultiplePostModel.dart';
import '../../apiIntegrationLearning/api_services.dart';
import '../../utils/glass_bubble.dart';
import '../../utils/searchbar.dart';
import '../receipe/all_receipes.dart';
import '../dishCategory/category_detail.dart';
import '../dishCategory/mocktail_list.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  TextEditingController _searchcontroller=TextEditingController();

  bool isReady = false;
  List<MultiplePostModel> postModel = [];
  _getMultiplePost(){
    isReady = true;
    ApiServices().getMultiplePostWithModel().then((value){
      setState(() {
        postModel = value!;
        isReady=false;
      });
    });
  }
  @override
  void initState() {
    _getMultiplePost();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
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
            child:Text(
              "Binge Bites for the GenZ Vibes ✨",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            )

        ),

        //Chefs Row
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 15,bottom: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap:()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>CakeList())),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.shade50,
                      border: Border.all(color: Colors.pinkAccent,width: 2)
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/cupcake.png",)),
                ),
              ),
              SizedBox(width: 10,),
              GestureDetector(
                onTap:()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>MocktailList())),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow.shade50,
                      border: Border.all(color: Colors.yellow,width: 2)
                  ),
                  child: Image.asset("assets/images/cocktail2.png",),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.shade50,
                    border: Border.all(color: Colors.green,width: 2)
                ),
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/burger.png")),
              ),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade50,
                  border: Border.all(color: Colors.blue,width: 2),
                ),
                child: Image.asset("assets/images/pizza.png"),
              ),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink.shade50,
                    border: Border.all(color: Colors.pink,width: 2)
                ),
                child: Image.asset("assets/images/shake.png"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Just For You ",   style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>AllReceipes()));
                  },
                  child: Text("See All",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),))
            ],
          ),
        ),
        Expanded(
            child: isReady
            ? Center(child: CircularProgressIndicator(),)
            : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: postModel.length,
            itemBuilder: (context,index){
              final recipe = postModel[index];
              return Row(
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
                                    Image.network(recipe.image.toString(),fit: BoxFit.cover,),
                                    ClipRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 2, // horizontal blur
                                          sigmaY: 2, // vertical blur
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
                                          child: Text(recipe.name.toString(),
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
                                          child:FavouriteIcon(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 250,
                                      left: 22,
                                      child: Row(children: [
                                        Icon(Icons.alarm,color: Colors.white,size: 19,),
                                        Text("${recipe.cookTimeMinutes} min |",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white)),
                                        SizedBox(width: 5,),
                                        Icon(Icons.local_fire_department_outlined,color: Colors.white,size: 19,),
                                        Text("${recipe.caloriesPerServing} cal",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white))
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
                ],
              );
            })
        )
      ],
    );
  }
}

