import 'package:citytech/features/home/domain/entity/outlet_entity.dart';
import 'package:citytech/features/home/domain/repositories/outlet_report_interfaces.dart';

class GetOutletUseCase {
  final OutletReportInterfaces _outletReportInterfaces;
  GetOutletUseCase(this._outletReportInterfaces);
  Future<List<OutletEntity>> getOutlet()  {
    return _outletReportInterfaces.getOutletReport();
   
  }
 
}