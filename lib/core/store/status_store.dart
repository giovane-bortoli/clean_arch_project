import 'package:mobx/mobx.dart';
part 'status_store.g.dart';

class StatusStore = _StatusStoreBase with _$StatusStore;

abstract class _StatusStoreBase with Store {
  @observable
  bool loading = false;

  @observable
  String? errorTitle;

  @observable
  String errorMessage = '';

  @computed
  bool get error => errorMessage.isNotEmpty;

  @action
  void setLoading(bool value) => loading = value;

  @action
  void setError({String? title, required String message}) {
    errorTitle = title;
    errorMessage = message;
  }

  @action
  void clearErrors() {
    errorTitle = null;
    errorMessage = '';
  }

  void startLoading() => setLoading(true);

  void stopLoading() => setLoading(false);
}
