import 'package:citytech/features/data/data_providers/api_service.dart';
import 'package:citytech/features/data/models/outlet_report/outlet_report_model.dart';
import 'package:citytech/features/domain/repositories/outlet_report_interfaces.dart';

class OutletRepoImpl implements OutletReportInterfaces {
  final ApiService _apiService;
  OutletRepoImpl(this._apiService);
  @override
  Future<List<OutletReportItem>> getOutletReport() async {
    final outletResponse = await _apiService.fetchOutletReport();
    final outletList = (outletResponse["data"]["items"] as List)
        .map((e) => OutletReportItem.fromJson(e))
        .toList();
    return outletList;
  }
}
