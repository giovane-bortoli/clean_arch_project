import 'package:clean_arch_project/core/configuration.dart';
import 'package:clean_arch_project/core/errors/exception.dart';
import 'package:clean_arch_project/features/list_cats/data/base/cat_list_data_source.dart';
import 'package:clean_arch_project/features/list_cats/data/models/cat_model.dart';

import '../../../../core/client/clean_arch_project_client.dart';

class CatListDataSourceImpl implements CatListDataSource {
  final CleanArchProjectClient client;

  CatListDataSourceImpl({required this.client});

  @override
  Future<List<CatModel>> index() async {
    final result = await client.get('${Configuration.baseUrl}/breeds', headers: {
      'x-api-key': 'live_ehXkCfhuBd1CltrX64scpFzM3f6VNEvKnPUuXJ7ioqtQ0NQmyfebLWK7KtdjG8TU',
    });

    if (result.statusCode == 200) {
      final list = List.from(result.data!);
      return list.map<CatModel>((mapModel) => CatModel.fromJson(mapModel)).toList();
    } else {
      throw ServerException();
    }
  }
}
