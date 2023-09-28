import 'package:flutter_projects/api%20integration/api%20integration%20using_http/service/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  //obs - observable
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    try {
      isLoading(true);
      var products = await HttpService.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
