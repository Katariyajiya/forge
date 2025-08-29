import 'package:flutter/material.dart';
import 'package:forge/utils/custom_appbar.dart';

class Receipe extends StatefulWidget {
  const Receipe({super.key});

  @override
  State<Receipe> createState() => _ReceipeState();
}

class _ReceipeState extends State<Receipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: Column(
        children: [
          SizedBox(height: 35,),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 200,   // container ka width
              height: 200,  // container ka height
              decoration: BoxDecoration(
                shape: BoxShape.circle,  // circle bana dega
                image: DecorationImage(
                  image: AssetImage("assets/images/cake2.jpg"), // ya NetworkImage("URL")
                  fit: BoxFit.cover, // image ko adjust karega
                ),
                // border: Border.all(
                //   color: Colors.black,  // optional border
                //   width: 2,
                // ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width ,
              height: MediaQuery.sizeOf(context).height/1,
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
              ),
             child: Stack(
               children: [
                 Positioned(
                   top: MediaQuery.sizeOf(context).height/40,
                   left: MediaQuery.sizeOf(context).width/70,
                   child: Container(
                     width: 60,
                     height: 5,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.grey.shade700,
                     ),

                   ),
                 )
               ],
             ),
            ),
          )
        ],
      ),
    );
  }
}
