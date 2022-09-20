import 'package:dio/dio.dart';

class ProjectsService {
  late Dio _dio;

  final String baseUrl = "http://api.taiwohassan.tk/api/";

  ProjectsService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  Future<Response> getProjects(String endPoint) async {
    return await _dio.get(endPoint);
  }
}
