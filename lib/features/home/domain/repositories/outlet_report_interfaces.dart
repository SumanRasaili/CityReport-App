import 'package:citytech/features/home/domain/entity/outlet_entity.dart';

abstract class OutletReportInterfaces {
  Future<List<OutletEntity>> getOutletReport();
}
