import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: GestureDetector(
              onTap: ()=>Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios_rounded)
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text("Forge",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),
        ),
      ],
    );
  }
}
