import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:clean_arch_project/core/store/status_store.dart';
import 'package:clean_arch_project/core/usecases/usecase.dart';
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';
import 'package:clean_arch_project/features/list_cats/domain/usecases/get_cat_list.dart';
import 'package:mobx/mobx.dart';
part 'cat_store.g.dart';

class CatStore = _CatStoreBase with _$CatStore;

abstract class _CatStoreBase with Store {
  final GetCatList getCatList;
  final StatusStore status = StatusStore();

  _CatStoreBase({
    required this.getCatList,
  });

  @observable
  List<CatEntity> catList = [];

  @action
  void setCatList(List<CatEntity> value) => catList = value;

  Future<void> loadCatList() async {
    status.setLoading(true);
    final result = await getCatList(emptyParams);
    await result.fold((failure) {
      if (failure is ServerFailure) {
        'Erro ao executar';
      }
    }, (catList) async {
      return setCatList(catList);
    });
    return status.setLoading(false);
  }
}
