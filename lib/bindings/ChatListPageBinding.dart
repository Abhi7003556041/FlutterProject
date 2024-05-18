import 'package:collge_erp_app/controller/ChatListController.dart';
import 'package:get/get.dart';

class ChatListPageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ChatListController>(() => ChatListController());
  }
  
}