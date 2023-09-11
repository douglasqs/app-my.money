import 'package:dio/dio.dart';
import 'package:my_money/src/http/app_dio.dart';

class HomeRepository {
  Future<Response<List<dynamic>>> getExpenses(String userId) async {
    String url = "http://187.35.246.220:10000/expense/findAllByUser/$userId";

    Dio clientHTTP = await AppDio.getConnection(isAuth: true);

    return await clientHTTP.get(url);
  }

  Future<Response<dynamic>> getGoal(String userId) async {
    String url = "http://187.35.246.220:10000/goal/findByUser/$userId";

    Dio clientHTTP = await AppDio.getConnection(isAuth: true);

    return await clientHTTP.get(url);
  }
}
