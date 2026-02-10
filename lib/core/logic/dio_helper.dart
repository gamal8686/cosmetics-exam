import 'package:cosmetics_exam/core/logic/cash_helper.dart';
import 'package:cosmetics_exam/core/logic/goTo_helper.dart';
import 'package:dio/dio.dart';

class DioHelper {
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'https://cosmatics.growfet.com',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  Future<CustomDio?> getData(String pass) async {
    _dio.options.headers.addAll({
      'Authorization': 'Bearer ${CacheHelper.token}',
    });
    try {
      final resp = await _dio.get(pass);
      final Map<String, dynamic> data;

      if (resp.data is List) {
        data = {'list': resp.data};
      } else {
        data = resp.data;
      }
      if (resp.statusCode == 200) {
        return CustomDio(msg: 'Success', isSuccess: true, data: data);
      }
      return CustomDio(
        msg: (resp.statusCode ?? 'error').toString(),
        isSuccess: false,
        data: data,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return CustomDio(msg: e.response?.data['message'], isSuccess: false);
      }
      return CustomDio(msg: e.response?.data['message'], isSuccess: false);
    }
  }

  Future<CustomDio?> sentData(String pass, Map<String, dynamic> data) async {
    _dio.options.headers.addAll({
      'Authorization': 'Bearer ${CacheHelper.token}',
    });
    try {
      final resp = await _dio.post(pass, data: data);
      if (resp.statusCode == 200) {
        return CustomDio(msg: 'is Success', isSuccess: true, data: data);
      }
      return CustomDio(
        msg: (resp.statusCode ?? 'error').toString(),
        isSuccess: false,
        data: data,
      );
    } on DioException catch (e) {
      showMessage(e.response?.data['message'], isError: true);
      if (e.response?.statusCode == 401) {
        CacheHelper.logOut();
      }
      return CustomDio(
        msg: e.response?.data['message'],
        isSuccess: false,
        data: data,
      );
    }
  }
}

class CustomDio {
  final String msg;
  final bool isSuccess;
  final Map<String, dynamic>? data;

  CustomDio({required this.msg, required this.isSuccess, this.data});
}
