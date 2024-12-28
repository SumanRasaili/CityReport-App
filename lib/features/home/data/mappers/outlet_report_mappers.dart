import 'package:citytech/features/home/data/models/outlet_report/outlet_report_model.dart';
import 'package:citytech/features/home/domain/entity/outlet_entity.dart';

class OutletReportMappers {
  static List<OutletEntity> toModelEntity(List<OutletReportItem> outletModel) {
    return outletModel
        .map((outletModels) =>
            OutletEntity(type: outletModels.type, value: outletModels.value))
        .toList();
  }

  static List<OutletReportItem> toModelList(List<OutletEntity> outletEntity) {
    return outletEntity
        .map((outletEntities) => OutletReportItem(
            type: outletEntities.type, value: outletEntities.value))
        .toList();
  }
}
