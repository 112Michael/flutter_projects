import 'package:flutter/material.dart';
import 'package:flutter_projects/api%20integration/api%20integration%20using%20dio/controller/datacontroller.dart';

class Detaildata extends StatelessWidget {
  int index;
  DetailData({required this.index});
  DataController controller = Get.find<DataController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text('Detailed data'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(controller.datas[index].id.toString()),
          Text(controller.datas[index].id.title!),
          Text(controller.datas[index].id.body!),
        ],
      ),),
    );
  }
}
