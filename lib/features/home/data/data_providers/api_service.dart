import 'package:citytech/constants/url_constants.dart';
import 'package:citytech/features/home/data/models/outlet_report/outlet_report_model.dart';
import 'package:citytech/features/home/data/models/transaction_report/transaction_report_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);
  Future<List<TransactionItem>> fetchPapTransactionReport() async {
    final response = await _dio.post(UrlConstants.PAP_REPORT);
    return (response.data["data"]["items"] as List)
        .map((e) => TransactionItem.fromJson(e))
        .toList();
  }

  Future<List<OutletReportItem>> fetchOutletReport() async {
    final response = await _dio.post(UrlConstants.OUTLET_REPORT);
    return (response.data["data"]["items"] as List)
        .map((e) => OutletReportItem.fromJson(e))
        .toList();
  }
}
