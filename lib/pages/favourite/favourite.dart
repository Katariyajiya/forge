import 'package:flutter/material.dart';
import 'package:forge/pages/search/custom_search.dart';
import 'package:forge/provider/favourite_provider.dart';
import 'package:forge/utils/custom_appbar.dart';
import 'package:forge/utils/glass_bubble.dart';
import 'package:provider/provider.dart';

import '../../utils/searchbar.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
        automaticallyImplyLeading: false,
      ),

      body: Column(
        children: [
          SizedBox(height: 25),
          favouriteProvider.selectedItems.isEmpty
              ? Center(child: Text("No favourites yet"))
              : Expanded(   // <-- constrain ListView
            child: ListView.builder(
              itemCount: favouriteProvider.selectedItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = favouriteProvider.selectedItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            item.strMealThumb.toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 215,
                          left: 337,
                          child: InkWell(
                              onTap: (){
                                favouriteProvider.removeItem(item);
                              },
                              child: Icon(Icons.dangerous_outlined,size: 25,color: Colors.white,))
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: GlassBubble(
                            child: Text(
                              item.strMeal.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

    );
  }

}
