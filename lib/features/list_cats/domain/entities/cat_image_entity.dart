// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CatImageEntity extends Equatable {
  final String id;
  final int width;
  final int height;
  final String url;

  const CatImageEntity({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  CatImageEntity copyWith({
    String? id,
    int? width,
    int? height,
    String? url,
  }) {
    return CatImageEntity(
      id: id ?? this.id,
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  @override
  List<Object?> get props => [id, width, height, url];
}
