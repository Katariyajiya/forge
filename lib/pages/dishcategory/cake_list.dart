import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:forge/apiIntegrationLearning/api_services.dart';
import 'package:forge/apiIntegrationLearning/cake_model.dart';
import 'package:forge/apiIntegrationLearning/mocktaiil_model.dart';
import 'package:forge/pages/favourite/favourite_icon.dart';
import 'package:forge/provider/favourite_provider.dart';
import 'package:forge/utils/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../../apiIntegrationLearning/MultiplePostModel.dart';
import '../../utils/glass_bubble.dart';
class CakeList extends StatefulWidget {
  const CakeList({super.key});

  @override
  State<CakeList> createState() => _CakeListState();
}

class _CakeListState extends State<CakeList> {

  List<CakeModel> cakeModel =[];

  bool isReady = false;
  _getCakeModel(){
    isReady = true;
    ApiServices().getCakeModel().then((value){
      setState(() {
        cakeModel = value!;
        isReady=false;
      });
    });
  }
  @override
  void initState() {
    _getCakeModel();
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
                        color: Colors.pink.shade50,
                        border: Border.all(color: Colors.pink,width: 2)
                    ),
                    child: Image.asset("assets/images/cupcake.png"),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Slice, Savor, Smile! 🍰",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey),
                  ),
                  Text(
                    "From rich chocolate to creamy cheesecakes— cakes that make every moment special.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
                  )
                ],
              ),
            ),
            isReady?
            Center(child: CircularProgressIndicator(),):
            ListView.builder(
                shrinkWrap: true,
                physics : NeverScrollableScrollPhysics(),

                itemCount: cakeModel.length,
                itemBuilder: (context,index){
                  final model = cakeModel[index];
                  return Consumer<FavouriteProvider>(
                    builder: (BuildContext context, value, Widget? child) { return  Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Stack(
                              children:[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft:Radius.circular(20),bottomRight:Radius.circular(20)),
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          Image.network(model.strMealThumb.toString(),fit:BoxFit.cover),
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
                                            left: 300,
                                            child: GlassBubble(
                                              child: Container(
                                                height: 22,
                                                // width: 30,
                                                decoration: const BoxDecoration(
                                                  //shape: BoxShape.circle,
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    if (value.isFavourite(model)) {
                                                      value.removeItem(model);
                                                    } else {
                                                      value.addItem(model);
                                                    }
                                                  },
                                                  child: value.isFavourite(model)
                                                      ? Icon(Icons.favorite, size: 20, color: Colors.red)
                                                      : Icon(Icons.favorite_border_outlined, size: 20, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Text(model.strMeal.toString(),
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
                    ); },
                  );
                })
          ],
        ),
      ),
    );

  }
}
