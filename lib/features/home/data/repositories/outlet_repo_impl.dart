import 'package:citytech/features/home/data/data_providers/api_service.dart';
import 'package:citytech/features/home/data/mappers/outlet_report_mappers.dart';
import 'package:citytech/features/home/domain/entity/outlet_entity.dart';
import 'package:citytech/features/home/domain/repositories/outlet_report_interfaces.dart';

class OutletRepoImpl implements OutletReportInterfaces {
  final ApiService _apiService;
  OutletRepoImpl(this._apiService);
  @override
  Future<List<OutletEntity>> getOutletReport() async {
    final data = await _apiService.fetchOutletReport();
    return OutletReportMappers.toModelEntity(data);
  }
}
