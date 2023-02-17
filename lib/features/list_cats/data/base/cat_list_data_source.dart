// Project imports:

import 'package:clean_arch_project/features/list_cats/data/models/cat_model.dart';

abstract class CatListDataSource {
  Future<List<CatModel>> index();
}
