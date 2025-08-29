import 'package:flutter/material.dart';
import 'package:forge/utils/custom_appbar.dart';

import '../utils/searchbar.dart';

class AllReceipes extends StatefulWidget {
  const AllReceipes({super.key});

  @override
  State<AllReceipes> createState() => _AllReceipesState();
}

class _AllReceipesState extends State<AllReceipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: CustomAppbar(),
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,

    ),
    body: Column(
      children: [
        Searchbar(),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/indian1.jpg")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 10),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.grey,)),
                                ),
                                SizedBox(height: 15),
                                Text("Smoked Makhani Paneer",style: TextStyle(color: Colors.orange.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Makhani Paneer is a classic North Indian dish where soft,"
                                   "creamy paneer cubes.."
                                 ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/indian1.jpg")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 10),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.grey,)),
                                ),
                                SizedBox(height: 15),
                                Text("Smoked Makhani Paneer",style: TextStyle(color: Colors.orange.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Makhani Paneer is a classic North Indian dish where soft,"
                                    "creamy paneer cubes.."
                                  ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/indian1.jpg")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 10),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.grey,)),
                                ),
                                SizedBox(height: 15),
                                Text("Smoked Makhani Paneer",style: TextStyle(color: Colors.orange.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Makhani Paneer is a classic North Indian dish where soft,"
                                    "creamy paneer cubes.."
                                  ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/indian1.jpg")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 10),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.grey,)),
                                ),
                                SizedBox(height: 15),
                                Text("Smoked Makhani Paneer",style: TextStyle(color: Colors.orange.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Makhani Paneer is a classic North Indian dish where soft,"
                                    "creamy paneer cubes.."
                                  ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/indian1.jpg")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 10),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.grey,)),
                                ),
                                SizedBox(height: 15),
                                Text("Smoked Makhani Paneer",style: TextStyle(color: Colors.orange.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Makhani Paneer is a classic North Indian dish where soft,"
                                    "creamy paneer cubes.."
                                  ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/indian1.jpg")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 10),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.grey,)),
                                ),
                                SizedBox(height: 15),
                                Text("Smoked Makhani Paneer",style: TextStyle(color: Colors.orange.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Makhani Paneer is a classic North Indian dish where soft,"
                                    "creamy paneer cubes.."
                                  ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 5),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/indian1.jpg")),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,right: 10),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(Icons.favorite_border_outlined,size: 20,color: Colors.grey,)),
                                ),
                                SizedBox(height: 15),
                                Text("Smoked Makhani Paneer",style: TextStyle(color: Colors.orange.shade900,fontWeight: FontWeight.bold,fontSize: 16),),
                                SizedBox(height: 3,),
                                Text("Makhani Paneer is a classic North Indian dish where soft,"
                                    "creamy paneer cubes.."
                                  ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}
