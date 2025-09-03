import 'dart:convert';

import 'package:forge/apiIntegrationLearning/MultiplePostModel.dart';
import 'package:forge/apiIntegrationLearning/cake_model.dart';
import 'package:forge/apiIntegrationLearning/mocktaiil_model.dart';
import 'package:forge/apiIntegrationLearning/model.dart';
import 'package:forge/apiIntegrationLearning/pmocktail_Model.dart';
import 'package:forge/apiIntegrationLearning/single_post_model.dart';
import 'package:http/http.dart' as http;

class ApiServices{
  Future<SinglePostModel?> getsinglePostWithModel() async{
    
    try{
      var url=Uri.parse("https://dummyjson.com/recipes/1");
      var response = await http.get(url);

      if(response.statusCode == 200 || response.statusCode==201){
        SinglePostModel model = SinglePostModel.fromJson(json.decode(response.body));

        return model;
      }
  }
  catch(e){
      print(e.toString());
  }
  return null;
 }
 Future<List<MultiplePostModel>?> getMultiplePostWithModel() async{
    try{
      var url = Uri.parse("https://dummyjson.com/recipes");
      var response = await http.get(url);

      if(response.statusCode==200){
        final data = json.decode(response.body);
        final List<dynamic> recipesJson = data['recipes'];


        List<MultiplePostModel> model = recipesJson.map((x) => MultiplePostModel.fromJson(x)).toList();
        return model;
      }
    }catch(e){
      print(e.toString());
    }
    return null;
 }

 Future<List<CakeModel>?> getCakeModel() async{
    try{
      var url = Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?s=cake");
      var response = await http.get(url);

      if(response.statusCode==200){
        final data = json.decode(response.body);
        final List<dynamic> cakeJson = data['meals'];

        List<CakeModel> model = cakeJson.map((x)=>CakeModel.fromJson(x)).toList();
        return model;
      }
    }catch(e){
      print(e.toString());
    }
 }
  Future<List<MocktaiilModel>?> getMocktaiilModel() async{
    try{
      var url = Uri.parse("https://www.thecocktaildb.com/api/json/v1/1/search.php?f=c");
      var response = await http.get(url);

      if(response.statusCode==200){
        final data = json.decode(response.body);
        final List<dynamic> mocktailJson = data['drinks'];

        List<MocktaiilModel> model = mocktailJson.map((x)=>MocktaiilModel.fromJson(x)).toList();
        return model;
      }
    }catch(e){
      print(e.toString());
    }
  }
  Future<List<PmocktailModel>?> getPmocktaiilModel() async{
    try{
      var url = Uri.parse("https://www.thecocktaildb.com/api/json/v1/1/search.php?f=p");
      var response = await http.get(url);

      if(response.statusCode==200){
        final data = json.decode(response.body);
        final List<dynamic> pmocktailJson = data['drinks'];

        List<PmocktailModel> model = pmocktailJson.map((x)=>PmocktailModel.fromJson(x)).toList();
        return model;
      }
    }catch(e){
      print(e.toString());
    }
  }

}
