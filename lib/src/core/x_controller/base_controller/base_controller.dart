import 'package:dio/dio.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  Dio dio = Dio()..options.headers = {'Content-Type': 'application/json'};
}
