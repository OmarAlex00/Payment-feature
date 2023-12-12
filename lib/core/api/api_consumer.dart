import 'package:dio/dio.dart';

abstract class BaseApiConsumer {
  Future<Response> get(String path, {String? token, String? contentType});

  Future<Response> post(String path,
      {Map<String, dynamic>? body,
      String? token,
      bool attachment = false,
      String? attachmentKey,
      String? attachmentPath,
      String? contentType});

  Future<Response> put(String path,
      {Map<String, dynamic>? body, String? token, String? contentType});

  Future<Response> delete(String path, {String? token, String? contentType});
}

class ApiConsumer implements BaseApiConsumer {
  final Dio dio = Dio();
  @override
  Future<Response> get(String path,
      {String? token, String? contentType}) async {
    late Map<String, String> headers;
    if (token != null) {
      headers = {
        'Content-Type': contentType!,
        'Authorization': 'Bearer $token',
      };
    } else {
      headers = {'Content-Type': contentType!};
    }
    var response = dio.get(path,
        options: Options(headers: headers, contentType: contentType));
    return response;
  }

  @override
  Future<Response> delete(String path, {String? token, String? contentType}) {
    late Map<String, String> headers;
    if (token != null) {
      headers = {
        'Content-Type': contentType!,
        'Authorization': 'Bearer $token',
      };
    } else {
      headers = {'Content-Type': contentType!};
    }
    var response = dio.delete(path,
        options: Options(headers: headers, contentType: contentType));
    return response;
  }

  @override
  Future<Response> post(String path,
      {Map<String, dynamic>? body,
      String? token,
      bool attachment = false,
      String? attachmentKey,
      String? attachmentPath,
      String? contentType}) {
    late Map<String, String> headers;
    if (token != null) {
      headers = {
        'Content-Type': contentType!,
        'Authorization': 'Bearer $token',
      };
    } else {
      headers = {'Content-Type': contentType!};
    }
    var response = dio.post(path,
        data: body,
        options: Options(headers: headers, contentType: contentType));
    return response;
  }

  @override
  Future<Response> put(String path,
      {Map<String, dynamic>? body, String? token, String? contentType}) {
    late Map<String, String> headers;
    if (token != null) {
      headers = {
        'Content-Type': contentType!,
        'Authorization': 'Bearer $token',
      };
    } else {
      headers = {'Content-Type': contentType!};
    }
    var response = dio.put(path,
        data: body,
        options: Options(headers: headers, contentType: contentType));
    return response;
  }
}
