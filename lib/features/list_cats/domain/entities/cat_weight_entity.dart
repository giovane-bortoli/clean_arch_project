// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CatWeightEntity extends Equatable {
  final String metric;
  final String imperial;

  const CatWeightEntity({
    required this.metric,
    required this.imperial,
  });

  CatWeightEntity copyWith({
    String? metric,
    String? imperial,
  }) {
    return CatWeightEntity(
      metric: metric ?? this.metric,
      imperial: imperial ?? this.imperial,
    );
  }

  @override
  List<Object?> get props => [metric, imperial];
}
