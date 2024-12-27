import 'package:citytech/features/domain/entity/outlet_entity.dart';

abstract class OutletReportInterfaces {
  Future<List<OutletEntity>> getOutletReport();
}
