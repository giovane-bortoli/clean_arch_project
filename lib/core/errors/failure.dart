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
