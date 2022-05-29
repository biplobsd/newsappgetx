import 'package:get/get.dart';
import 'package:newsappgetx/core/repository/news_repo_impl.dart';
import 'package:newsappgetx/news_headline/controller/news_headline_controller.dart';

class NewsHeadlineBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NewsRepoImpl());
    Get.put(NewsHeadLineController());
  }
}
