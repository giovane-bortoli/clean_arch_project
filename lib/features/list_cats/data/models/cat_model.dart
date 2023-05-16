import 'package:clean_arch_project/features/list_cats/data/models/cat_image_model.dart';
import 'package:clean_arch_project/features/list_cats/data/models/cat_weight_model.dart';
import 'package:clean_arch_project/features/list_cats/domain/entities/cat_entity.dart';

class CatModel extends CatEntity {
  const CatModel({
    required String id,
    required String name,
    required String origin,
    required String description,
    required String temperament,
    required CatImageModel catImage,
    required CatWeightModel catWeight,
  }) : super(
            id: id,
            name: name,
            origin: origin,
            description: description,
            temperament: temperament,
            catImage: catImage,
            catWeight: catWeight);

  factory CatModel.fromJson(Map<String, dynamic> mapped) => CatModel(
        id: mapped['id'],
        name: mapped['name'],
        origin: mapped['origin'],
        description: mapped['description'],
        temperament: mapped['temperament'],
        catImage: CatImageModel.fromJson(mapped['image'] ?? {}),
        catWeight: CatWeightModel.fromJson(mapped['weight'] ?? {}),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'origin': origin,
        'description': description,
        'temperament': temperament,
        'catImage': catImage,
        'catWeight': catWeight,
      };

  factory CatModel.fromEntity(CatEntity cat) => CatModel(
        id: cat.id,
        name: cat.name,
        origin: cat.origin,
        description: cat.description,
        temperament: cat.temperament,
        catImage: CatImageModel.fromEntity(cat.catImage),
        catWeight: CatWeightModel.fromEntity(cat.catWeight),
      );
}
