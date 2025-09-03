import 'package:flutter/material.dart';
import 'package:forge/apiIntegrationLearning/MultiplePostModel.dart';
import 'package:forge/apiIntegrationLearning/api_services.dart';
import 'package:forge/utils/custom_appbar.dart';

class MultipleDataScreen extends StatefulWidget {
  const MultipleDataScreen({super.key});

  @override
  State<MultipleDataScreen> createState() => _MultipleDataScreenState();
}

class _MultipleDataScreenState extends State<MultipleDataScreen> {

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
  @override
  void initState() {
    _getMultiplePost();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: isReady==true?
      Center(child: CircularProgressIndicator(),):
          ListView.builder(itemCount: postModel.length,itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Image.network(postModel[index].image.toString()),
              title: Text(postModel[index].name.toString()),
              ),
            );
          })
    );
  }
}
