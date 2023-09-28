import 'dart:ffi';

import 'package:flutter_projects/api%20integration/api%20integration%20using%20dio/model/datamodel.dart';
import 'package:get/get.dart';

class Datacontroller extends GetxController{
  RxList<Datamodel>datas = RxList();
  RxBool isloading = true.obs;
  RxBool islistatDown = false.obs;
  RxBool isNetconnected = true.obs;
  var url = "https://jsonplaceholder.typicode.com/posts";
  var itemCoontrolled = Item
   isinternetConnected()async{
     isNetconnected.value = await InternetConnectionChecker().hashConnection;
   }
fetchData()async{
     isinternetConnected();
     isLoading.value = true;
     var response

     scrollToDown(){
       itemControler.scrolled(
         index:datas.length,
         duration:Duration(seconds: 3),
           curve:Curves.easeInQuart
       );
       isListatDown.value = false;
     }
     scrollToUp(){
       itemControler.scrollTo(
           index:datas.length,
           duration:Duration(seconds: 3),
           curve:Curves.easeInQuart
       );
       isListatDown.value = false;

     }

     @override
  void onInit(){
       fetchData();
       isinternetConnected();
       super.onInit();
     }
}


