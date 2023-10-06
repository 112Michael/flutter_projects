import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_projects/api%20integration/api%20integration%20using%20dio/controller/datacontroller.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DataHome extends StatelessWidget {

  DataController controller =Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Home'),),
      body: Obx(() => SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: controller.isNetConnected.value
            ?(controller.isLoading.value ? loadAnimation():getData())
            :noInternet(context),
      )),
    );
  }
  Center loadAnimation() {
    return Center(child: SizedBox(
      child: Lottie.asset("asset/animation/loadimg.json"),
    ),);
  }
  RefreshIndicator getData() {
    return RefreshIndicator(
        child: ScrollablePositionedList.builder(itemCount: controller.datas.length,
            itemBuilder: (context,index){
              return InkWell(
                onTap: () => Get.to(DetailData(index: index)),
                child: Card(
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.brown),
                      child: Center(
                        child: Text(controller.datas[index].id.toString()),
                      ),
                    ),
                    title: Text(controller.datas[index].title!,
                      style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold),),
                    subtitle: Text(controller.datas[index].body!,
                      style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                ),
              );
            }));
  }

  Center noInternet(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Lottie.asset("asset/animation/nonetwork.json"),
          )
        ],
      ),
    );
  }
}