import 'package:clean_arch_project/features/list_cats/data/models/cat_model.dart';

abstract class CatListLocalDataSource {
  Future<void> save(List<CatModel> storeModel);
  Future<List<CatModel>> getStored();
}
