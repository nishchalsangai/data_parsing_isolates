import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:logger/logger.dart';

class NetworkService {
  static Future<http.Response> get({required String url}) async {
    try {
      // final firebaseAuth = FirebaseAuth.instance;
      // final String token = await firebaseAuth.currentUser?.getIdToken() ?? '';
      //Headers
      Map<String, String> headers = {};
      headers['Accept'] = "application/json";
      headers['Content-Type'] = "application/json";
      // headers['Connection'] = "keep-alive";
      // headers['authorization'] = 'Bearer $token';
      http.Response response = await http.get(
        Uri.parse(url),
        headers: headers,
      );
      Logger().i(
        'REQ Headers: $headers\n'
        'RES Headers: ${response.request?.headers}\n'
        'REQUEST\n >> ${response.request}\n'
        'STATUS\n >> ${response.statusCode}\n'
        'BODY\n >> ${response.body}',
      );
      return response;
    } catch (e, stack) {
      Logger().e('Error on \n >> $url', error: e, stackTrace: stack);
      rethrow;
    }
  }

  static Future<http.Response> post(
      {required String url, required Map<String, dynamic> body}) async {
    try {
      // final firebaseAuth = FirebaseAuth.instance;
      // final String token = await firebaseAuth.currentUser?.getIdToken() ?? '';
      //Headers
      Map<String, String> headers = {};
      headers['Accept'] = "application/json";
      headers['Content-Type'] = "application/json";
      headers['Connection'] = "keep-alive";
      // headers['authorization'] = 'Bearer $token';

      http.Response response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: json.encode(body),
      );
      Logger().i(
        'REQ Headers: $headers\n'
        'RES Headers: ${response.request?.headers}\n'
        'REQ BODY: $body\n'
        'REQUEST\n >> ${response.request}\n'
        'STATUS\n >> ${response.statusCode}\n'
        'BODY\n >> ${response.body}',
      );
      // ;
      return response;
    } catch (e, stack) {
      Logger().e('Error on \n >> $url', error: e, stackTrace: stack);
      rethrow;
      // throw Exception('---FAILED TO POST---');
    }
  }

  static Future<http.Response> patch(
      {required String url, required Map<String, dynamic> body}) async {
    try {
      // final firebaseAuth = FirebaseAuth.instance;
      // final String token = await firebaseAuth.currentUser?.getIdToken() ?? '';
      //Headers
      Map<String, String> headers = {};
      headers['Accept'] = "application/json";
      headers['Content-Type'] = "application/json";
      headers['Connection'] = "keep-alive";
      // headers['authorization'] = 'Bearer $token';

      http.Response response = await http.patch(
        Uri.parse(url),
        headers: headers,
        body: json.encode(body),
      );
      Logger().i(
        'REQ Headers: $headers\n'
        'RES Headers: ${response.request?.headers}\n'
        'REQ BODY: $body\n'
        'REQUEST\n >> ${response.request}\n'
        'STATUS\n >> ${response.statusCode}\n'
        'BODY\n >> ${response.body}',
      );
      // ;
      return response;
    } catch (e, stack) {
      Logger().e('Error on \n >> $url', error: e, stackTrace: stack);
      rethrow;
      // throw Exception('---FAILED TO POST---');
    }
  }

  static Future<http.Response> put(
      {required String url, required Map<String, dynamic> body}) async {
    try {
      // final firebaseAuth = FirebaseAuth.instance;
      // final String token = await firebaseAuth.currentUser?.getIdToken() ?? '';
      //Headers
      Map<String, String> headers = {};
      headers['Accept'] = "application/json";
      headers['Content-Type'] = "application/json";
      headers['Connection'] = "keep-alive";
      // headers['authorization'] = 'Bearer $token';

      http.Response response = await http.put(
        Uri.parse(url),
        headers: headers,
        body: json.encode(body),
      );
      Logger().i(
        'REQ Headers: $headers\n'
        'RES Headers: ${response.request?.headers}\n'
        'REQ BODY: $body\n'
        'REQUEST\n >> ${response.request}\n'
        'STATUS\n >> ${response.statusCode}\n'
        'BODY\n >> ${response.body}',
      );
      // ;
      return response;
    } catch (e, stack) {
      Logger().e('Error on \n >> $url', error: e, stackTrace: stack);
      rethrow;
    }
  }

  static Future<http.Response> delete({required String url}) async {
    try {
      // final firebaseAuth = FirebaseAuth.instance;
      // final String token = await firebaseAuth.currentUser?.getIdToken() ?? '';
      //Headers
      Map<String, String> headers = {};
      headers['Accept'] = "application/json";
      headers['Content-Type'] = "application/json";
      headers['Connection'] = "keep-alive";
      // headers['authorization'] = 'Bearer $token';

      http.Response response = await http.delete(
        Uri.parse(url),
        headers: headers,
      );
      Logger().i(
        'REQ Headers: $headers\n'
        'RES Headers: ${response.request?.headers}\n'
        'REQUEST\n >> ${response.request}\n'
        'STATUS\n >> ${response.statusCode}\n'
        'BODY\n >> ${response.body}',
      );
      return response;
    } catch (e, stack) {
      Logger().e('Error on \n >> $url', error: e, stackTrace: stack);
      rethrow;
    }
  }

  // static Future<void> exportToFile(String endpoint, String name) async {
  //   final status = await Permission.storage.request();
  //   try {
  //     if (status.isGranted || status.isLimited) {
  //       final externalDir = Platform.isAndroid
  //           ? await getExternalStorageDirectory()
  //           : await getApplicationDocumentsDirectory();

  //       String? path =
  //           Platform.isAndroid ? externalDir?.path : externalDir?.absolute.path;

  //       final String? tokenTemp = await LocalStorage.getToken();
  //       String token = "Bearer $tokenTemp";
  //       Map<String, String> headers = {};
  //       headers['Accept'] = "application/json";
  //       headers['Content-Type'] = "application/json";
  //       headers['Connection'] = "keep-alive";
  //       headers['authorization'] = token;

  //       final taskID = await FlutterDownloader.enqueue(
  //         url: ApiRoutes.baseUrl + endpoint,
  //         headers: headers,
  //         savedDir: path ?? "",
  //         fileName: name,
  //         saveInPublicStorage: true,
  //         showNotification: true,
  //         openFileFromNotification: true,
  //       );
  //       if (taskID != null) await FlutterDownloader.open(taskId: taskID);
  //     } else {
  //       showToastMsg("Storage permission denied, please enable from settings!");
  //       openAppSettings();
  //     }
  //   } catch (e) {
  //     showToastMsg(e.toString());
  //   }
  // }

  static final client = http.Client();
}
