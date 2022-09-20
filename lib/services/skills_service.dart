import 'package:dio/dio.dart';

class SkillsService {
  late Dio _dio;

  final String baseUrl = "http://api.taiwohassan.tk/api/";

  SkillsService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

  Future<Response> getSkills(String endPoint) async {
    return await _dio.get(endPoint);
  }
}
