// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StatusStore on _StatusStoreBase, Store {
  Computed<bool>? _$errorComputed;

  @override
  bool get error => (_$errorComputed ??=
          Computed<bool>(() => super.error, name: '_StatusStoreBase.error'))
      .value;

  late final _$loadingAtom =
      Atom(name: '_StatusStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$errorTitleAtom =
      Atom(name: '_StatusStoreBase.errorTitle', context: context);

  @override
  String? get errorTitle {
    _$errorTitleAtom.reportRead();
    return super.errorTitle;
  }

  @override
  set errorTitle(String? value) {
    _$errorTitleAtom.reportWrite(value, super.errorTitle, () {
      super.errorTitle = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_StatusStoreBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$_StatusStoreBaseActionController =
      ActionController(name: '_StatusStoreBase', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_StatusStoreBaseActionController.startAction(
        name: '_StatusStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_StatusStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError({String? title, required String message}) {
    final _$actionInfo = _$_StatusStoreBaseActionController.startAction(
        name: '_StatusStoreBase.setError');
    try {
      return super.setError(title: title, message: message);
    } finally {
      _$_StatusStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearErrors() {
    final _$actionInfo = _$_StatusStoreBaseActionController.startAction(
        name: '_StatusStoreBase.clearErrors');
    try {
      return super.clearErrors();
    } finally {
      _$_StatusStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
errorTitle: ${errorTitle},
errorMessage: ${errorMessage},
error: ${error}
    ''';
  }
}
