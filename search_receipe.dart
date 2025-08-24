import 'package:flutter/material.dart';

import '../model/bot.dart';

class SearchReceipe extends StatelessWidget {
  const SearchReceipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder:(BuildContext context)=>Bot()
                    )
                );
              },
              child: Icon(Icons.search)),
        ),
      ),
    );
  }
}
