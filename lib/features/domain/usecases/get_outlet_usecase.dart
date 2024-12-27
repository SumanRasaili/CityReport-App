import 'package:citytech/features/domain/entity/outlet_entity.dart';
import 'package:citytech/features/domain/repositories/outlet_report_interfaces.dart';

class GetOutletUseCase {
  final OutletReportInterfaces _outletReportInterfaces;
  GetOutletUseCase(this._outletReportInterfaces);
  Future<List<OutletEntity>> getOutlet()  {
    return _outletReportInterfaces.getOutletReport();
   
  }
 
}