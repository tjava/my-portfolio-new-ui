import 'package:dio/dio.dart';

class SingleProjectService {
  late Dio _dio;

  final String baseUrl = "http://api.taiwohassan.tk/api/";

  SingleProjectService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  Future<Response> getSingleProject(String endPoint) async {
    return await _dio.get(endPoint);
  }
}
