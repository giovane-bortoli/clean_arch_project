import 'dart:convert';

import 'package:clean_arch_project/core/errors/exception.dart';
import 'package:clean_arch_project/core/storage/hive_storage.dart';
import 'package:clean_arch_project/features/list_cats/data/base/cat_list_local_data_source.dart';
import 'package:clean_arch_project/features/list_cats/data/models/cat_model.dart';

class CatListLocalDataSourceImpl implements CatListLocalDataSource {
  static const String remoteResponseBoxKey = 'remote_response_key';
  final HiveStorage hiveStorage;

  CatListLocalDataSourceImpl({required this.hiveStorage});

  @override
  Future<List<CatModel>> getStored() async {
    final stored = hiveStorage.get(remoteResponseBoxKey, shared: true);
    final list = List<String>.from(stored ?? []);
    if (list.isNotEmpty) {
      return list.map((jsonString) => jsonDecode(jsonString)).map((mapped) => CatModel.fromJson(mapped)).toList();
    }

    throw LocalStorageException();
  }

  @override
  Future<void> save(List<CatModel> storeModel) async {
    try {
      final mapped = storeModel.map((model) => jsonEncode(model.toMap())).toList();
      await hiveStorage.insert(remoteResponseBoxKey, mapped);
    } catch (_) {
      throw LocalStorageException();
    }
  }
}
