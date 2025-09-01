import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forge/apiIntegrationLearning/api_services.dart';
import 'package:forge/apiIntegrationLearning/cake_model.dart';
import 'package:forge/apiIntegrationLearning/mocktaiil_model.dart';
import 'package:forge/pages/favourite/favourite_icon.dart';
import 'package:forge/utils/custom_appbar.dart';

import '../../apiIntegrationLearning/MultiplePostModel.dart';
import '../../apiIntegrationLearning/pmocktail_Model.dart';
import '../../utils/glass_bubble.dart';

class MocktailList extends StatefulWidget {
  const MocktailList({super.key});

  @override
  State<MocktailList> createState() => _MocktailListState();
}

class _MocktailListState extends State<MocktailList> {

  List<MocktaiilModel> mocktailModel =[];
  List<PmocktailModel> pmocktailModel =[];


  bool isReady = false;

  _getMocktailModel(){
    isReady = true;
    ApiServices().getMocktaiilModel().then((value){
      setState(() {
        mocktailModel = value!;
        isReady=false;
      });
    });
  }
  _getPmocktailModel(){
    isReady = true;
    ApiServices().getPmocktaiilModel().then((value){
      setState(() {
        pmocktailModel = value!;
        isReady=false;
      });
    });
  }
  @override
  void initState() {
    _getMocktailModel();
    _getPmocktailModel();
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
                      border: Border.all(color: Colors.yellow,width: 2)
                    ),
                  child: Image.asset("assets/images/cocktail2.png"),
                  ),
                  SizedBox(height: 10,),
                  Text("Bake, Frost, Celebrate! 🧁",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),),
                  Text("From classic vanilla to choco-loaded delights — cupcakes made to impress.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey),)
                ],
              ),
            ),
            isReady?
            Center(child: CircularProgressIndicator(),):
            ListView.builder(
              shrinkWrap: true,
              physics : NeverScrollableScrollPhysics(),

            itemCount: mocktailModel.length,
                itemBuilder: (context,index){
                  final mocktail = mocktailModel[index];
                  final pmocktail = pmocktailModel[index];
                  final receipeDataModel = mocktailModel[index].strDrink.toString();
             return Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: Column(
                     children: [
                       Stack(
                           children:[
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                                 width: 170,
                                 height: 200,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(20),
                                   child: Stack(
                                     fit: StackFit.expand,
                                       children: [
                                       Image.network(mocktail.strDrinkThumb.toString(),fit:BoxFit.cover),
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
                                             child: Text(mocktail.strDrink.toString(),
                                               style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),)),
                                       ),
                                     ],
                                   ),
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

                 Column(
                   children: [
                     Stack(
                         children:[
                           Container(
                             width: 170,
                             height: 200,
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(20),
                               child: Stack(
                                 fit: StackFit.expand,
                                 children: [
                                   Image.network(pmocktail.strDrinkThumb.toString(),fit:BoxFit.cover),
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
                                         child:FavouriteIcon()
                                       ),
                                     ),
                                   ),

                                   Padding(
                                     padding: const EdgeInsets.all(5.0),
                                     child: Align(
                                         alignment: Alignment.bottomCenter,
                                         child: Text(pmocktail.strDrink.toString(),
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
               ],
             );
            })
          ],
        ),
      ),
    );

  }
}
