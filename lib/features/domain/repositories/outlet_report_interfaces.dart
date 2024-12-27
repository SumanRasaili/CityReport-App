import 'package:citytech/features/data/models/outlet_report/outlet_report_model.dart';

abstract class OutletReportInterfaces {
  Future<List<OutletReportItem>> getOutletReport();
}
