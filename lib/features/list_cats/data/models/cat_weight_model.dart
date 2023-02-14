import 'package:clean_arch_project/features/list_cats/domain/entities/cat_weight_entity.dart';

class CatWeightModel extends CatWeightEntity {
  const CatWeightModel({
    required String imperial,
    required String metric,
  }) : super(
          imperial: imperial,
          metric: metric,
        );

  factory CatWeightModel.fromJson(Map<String, dynamic> mapped) => CatWeightModel(
        imperial: mapped['imperial'],
        metric: mapped['metric'],
      );

  Map<String, dynamic> toMap() => {
        'imperial': imperial,
        'metric': metric,
      };

  factory CatWeightModel.fromEntity(CatWeightEntity catWeight) => CatWeightModel(
        imperial: catWeight.imperial,
        metric: catWeight.metric,
      );
}
