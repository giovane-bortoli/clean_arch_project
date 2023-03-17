import 'package:clean_arch_project/features/list_cats/domain/entities/cat_image_entity.dart';

class CatImageModel extends CatImageEntity {
  const CatImageModel({
    required String id,
    required int width,
    required int height,
    required String url,
  }) : super(
          height: height,
          id: id,
          url: url,
          width: width,
        );

  factory CatImageModel.fromJson(Map<String, dynamic> mapped) => CatImageModel(
        id: mapped['id'] ?? '',
        width: mapped['width'],
        height: mapped['height'],
        url: mapped['url'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'width': width,
        'height': height,
        'url': url,
      };

  factory CatImageModel.fromEntity(CatImageEntity catImage) => CatImageModel(
        id: catImage.id,
        width: catImage.width,
        height: catImage.height,
        url: catImage.url,
      );
}
