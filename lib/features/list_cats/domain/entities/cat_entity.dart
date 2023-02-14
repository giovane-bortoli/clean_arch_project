// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:clean_arch_project/features/list_cats/domain/entities/cat_image_entity.dart';
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_weight_entity.dart';

class CatEntity extends Equatable {
  final String id;
  final String name;
  final String origin;
  final String description;
  final String temperament;
  final CatImageEntity catImage;
  final CatWeightEntity catWeight;

  const CatEntity({
    required this.id,
    required this.name,
    required this.origin,
    required this.description,
    required this.temperament,
    required this.catImage,
    required this.catWeight,
  });

  CatEntity copyWith({
    String? id,
    String? name,
    String? origin,
    String? description,
    String? temperament,
    CatImageEntity? catImage,
    CatWeightEntity? catWeight,
  }) {
    return CatEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      origin: origin ?? this.origin,
      description: description ?? this.description,
      temperament: temperament ?? this.temperament,
      catImage: catImage ?? this.catImage,
      catWeight: catWeight ?? this.catWeight,
    );
  }

  @override
  List<Object?> get props => [id, name, origin, description, temperament, catImage, catWeight];
}
