import 'package:clean_arch_project/core/errors/exception.dart';
import 'package:clean_arch_project/features/list_cats/data/data_sources/cat_list_data_source.dart';
import 'package:clean_arch_project/features/list_cats/data/models/cat_model.dart';

import '../../../../core/client/clean_arch_project_client.dart';

class CatListDataSourceImpl implements CatListDataSource {
  final CleanArchProjectClient client;

  CatListDataSourceImpl({required this.client});

  @override
  Future<List<CatModel>> index() async {
    final result = await client.get('https://api.thecatapi.com/v1/breeds');
    if (result.statusCode == 200) {
      final list = List.from(result.data!);
      return list
          .map<CatModel>((mapModel) => CatModel.fromJson(mapModel))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
