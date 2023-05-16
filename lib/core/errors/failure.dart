import 'package:equatable/equatable.dart';

abstract class Failure {
  final List<dynamic>? properties;

  Failure({this.properties});
}

class ServerFailure extends Failure implements EquatableMixin {
  @override
  String toString() => 'Server  Failure';

  @override
  List<Object?> get props => [properties];

  @override
  bool? get stringify => throw UnimplementedError();
}

class LocalStorageFailure extends Failure implements EquatableMixin {
  @override
  String toString() => 'Local Storage Failure';

  @override
  List<Object?> get props => [properties];

  @override
  bool? get stringify => throw UnimplementedError();
}

class ConnectionFailure extends Failure implements EquatableMixin {
  @override
  String toString() => 'Connection Failure';

  @override
  List<Object?> get props => [properties];

  @override
  bool? get stringify => throw UnimplementedError();
}

class EmptyFailure extends Failure implements EquatableMixin {
  @override
  String toString() => 'Empty Failure';

  @override
  List<Object?> get props => [properties];

  @override
  bool? get stringify => throw UnimplementedError();
}
