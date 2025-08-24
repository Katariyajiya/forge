import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          Container(
            height: 310,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                       color: Colors.white,
                        boxShadow: [
                        BoxShadow(
                        color: Colors.black38,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                      ],
                      ),

                      width: 200,
                      height: 300,
                      child: Column(

                        children: [
                          Center(
                            child: Container(
                             // alignment: Alignment.center,
                                width: 150,
                                height: 175,
                               // padding: EdgeInsets.only(top: 5),
                                child: Image.asset("assets/images/salad6.jpg",)
                            ),
                          ),
                          Text("Fresh Garden Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                              Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                              Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                              Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                              Icon(Icons.star,color: Colors.grey.shade300 ,size: 18,),
                              SizedBox(width: 30,),
                              Text("4.2",style: TextStyle(fontWeight: FontWeight.w300),)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Icon(Icons.alarm,),
                                    Text("45 mins",style: TextStyle(fontWeight: FontWeight.w300),),
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Text("|",style: TextStyle(color: Colors.grey.shade300,fontSize: 30),),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Icon(Icons.local_fire_department_outlined),
                                    Text("200 cal",style: TextStyle(fontWeight: FontWeight.w300),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),

                        width: 200,
                        height: 300,
                        child: Column(

                          children: [
                            Center(
                              child: Container(
                                // alignment: Alignment.center,
                                  width: 150,
                                  height: 175,
                                  // padding: EdgeInsets.only(top: 5),
                                  child: Image.asset("assets/images/salad6.jpg",)
                              ),
                            ),
                            Text("Fresh Garden Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.grey.shade300 ,size: 18,),
                                SizedBox(width: 30,),
                                Text("4.2",style: TextStyle(fontWeight: FontWeight.w300),)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Icon(Icons.alarm,),
                                      Text("45 mins",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                  SizedBox(width: 30,),
                                  Text("|",style: TextStyle(color: Colors.grey.shade300,fontSize: 30),),
                                  SizedBox(width: 30,),
                                  Column(
                                    children: [
                                      Icon(Icons.local_fire_department_outlined),
                                      Text("200 cal",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),

                        width: 200,
                        height: 300,
                        child: Column(

                          children: [
                            Center(
                              child: Container(
                                // alignment: Alignment.center,
                                  width: 150,
                                  height: 175,
                                  // padding: EdgeInsets.only(top: 5),
                                  child: Image.asset("assets/images/salad6.jpg",)
                              ),
                            ),
                            Text("Fresh Garden Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.grey.shade300 ,size: 18,),
                                SizedBox(width: 30,),
                                Text("4.2",style: TextStyle(fontWeight: FontWeight.w300),)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Icon(Icons.alarm,),
                                      Text("45 mins",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                  SizedBox(width: 30,),
                                  Text("|",style: TextStyle(color: Colors.grey.shade300,fontSize: 30),),
                                  SizedBox(width: 30,),
                                  Column(
                                    children: [
                                      Icon(Icons.local_fire_department_outlined),
                                      Text("200 cal",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),

                        width: 200,
                        height: 300,
                        child: Column(

                          children: [
                            Center(
                              child: Container(
                                // alignment: Alignment.center,
                                  width: 150,
                                  height: 175,
                                  // padding: EdgeInsets.only(top: 5),
                                  child: Image.asset("assets/images/salad6.jpg",)
                              ),
                            ),
                            Text("Fresh Garden Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.grey.shade300 ,size: 18,),
                                SizedBox(width: 30,),
                                Text("4.2",style: TextStyle(fontWeight: FontWeight.w300),)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Icon(Icons.alarm,),
                                      Text("45 mins",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                  SizedBox(width: 30,),
                                  Text("|",style: TextStyle(color: Colors.grey.shade300,fontSize: 30),),
                                  SizedBox(width: 30,),
                                  Column(
                                    children: [
                                      Icon(Icons.local_fire_department_outlined),
                                      Text("200 cal",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),

                        width: 200,
                        height: 300,
                        child: Column(

                          children: [
                            Center(
                              child: Container(
                                // alignment: Alignment.center,
                                  width: 150,
                                  height: 175,
                                  // padding: EdgeInsets.only(top: 5),
                                  child: Image.asset("assets/images/salad6.jpg",)
                              ),
                            ),
                            Text("Fresh Garden Salad",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.orange.shade300,size: 18,),
                                Icon(Icons.star,color: Colors.grey.shade300 ,size: 18,),
                                SizedBox(width: 30,),
                                Text("4.2",style: TextStyle(fontWeight: FontWeight.w300),)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Column(
                                    children: [
                                      Icon(Icons.alarm,),
                                      Text("45 mins",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  ),
                                  SizedBox(width: 30,),
                                  Text("|",style: TextStyle(color: Colors.grey.shade300,fontSize: 30),),
                                  SizedBox(width: 30,),
                                  Column(
                                    children: [
                                      Icon(Icons.local_fire_department_outlined),
                                      Text("200 cal",style: TextStyle(fontWeight: FontWeight.w300),),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending Recipes",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                Text("view all",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey,fontSize: 18),)
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/pancake2.jpg',fit: BoxFit.cover,)),
                        ),
                       // SizedBox(width: 30,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Honey caramel pancakes with \n blueberries",style: TextStyle(fontWeight: FontWeight.w500),),
                                  SizedBox(width: 60,),
                                  GestureDetector(
                                    onTap:(){
                                      setState(() {
                                         isFavraited =!isFavraited;
                                      });
                                      print("heart tapped");
                                    } ,
                                      child: Icon(
                                        isFavraited ?Icons.favorite:Icons.favorite_border,
                                        color: isFavraited?Colors.red:Colors.grey,
                                      )
                                  ),
                                ],
                              ),
                              Row(children: [
                                Icon(Icons.star,color:Colors.orange.shade300,size: 18,),
                                Text("4.5",style: TextStyle(fontWeight: FontWeight.w300)),
                                SizedBox(width: 15,),
                                Icon(Icons.alarm),
                                Text("1 hour",style: TextStyle(fontWeight: FontWeight.w300)),
                                SizedBox(width: 15,),
                                Icon(Icons.local_fire_department_outlined),
                                Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300))
                              ],)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/pancake2.jpg',fit: BoxFit.cover,)),
                        ),
                        // SizedBox(width: 30,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Honey caramel pancakes with \n blueberries",style: TextStyle(fontWeight: FontWeight.w500),),
                                  SizedBox(width: 60,),
                                  GestureDetector(
                                      onTap:(){
                                        setState(() {
                                          isFavraited =!isFavraited;
                                        });
                                        print("heart tapped");
                                      } ,
                                      child: Icon(
                                        isFavraited ?Icons.favorite:Icons.favorite_border,
                                        color: isFavraited?Colors.red:Colors.grey,
                                      )
                                  ),
                                ],
                              ),
                              Row(children: [
                                Icon(Icons.star,color:Colors.orange.shade300,size: 18,),
                                Text("4.5",style: TextStyle(fontWeight: FontWeight.w300)),
                                SizedBox(width: 15,),
                                Icon(Icons.alarm),
                                Text("1 hour",style: TextStyle(fontWeight: FontWeight.w300)),
                                SizedBox(width: 15,),
                                Icon(Icons.local_fire_department_outlined),
                                Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300))
                              ],)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/pancake2.jpg',fit: BoxFit.cover,)),
                        ),
                        // SizedBox(width: 30,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Honey caramel pancakes with \n blueberries",style: TextStyle(fontWeight: FontWeight.w500),),
                                  SizedBox(width: 60,),
                                  GestureDetector(
                                      onTap:(){
                                        setState(() {
                                          isFavraited =!isFavraited;
                                        });
                                        print("heart tapped");
                                      } ,
                                      child: Icon(
                                        isFavraited ?Icons.favorite:Icons.favorite_border,
                                        color: isFavraited?Colors.red:Colors.grey,
                                      )
                                  ),
                                ],
                              ),
                              Row(children: [
                                Icon(Icons.star,color:Colors.orange.shade300,size: 18,),
                                Text("4.5",style: TextStyle(fontWeight: FontWeight.w300)),
                                SizedBox(width: 15,),
                                Icon(Icons.alarm),
                                Text("1 hour",style: TextStyle(fontWeight: FontWeight.w300)),
                                SizedBox(width: 15,),
                                Icon(Icons.local_fire_department_outlined),
                                Text("100 cal",style: TextStyle(fontWeight: FontWeight.w300))
                              ],)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),



                ],
              ),
            ),
          )
         
        ],
      ),
    );
  }
}
