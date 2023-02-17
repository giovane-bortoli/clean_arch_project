import 'dart:convert';

import 'package:clean_arch_project/core/client/clean_arch_project_client.dart';
import 'package:clean_arch_project/core/client/clean_arch_project_response.dart';
import 'package:clean_arch_project/features/list_cats/data/data_sources/cat_list_data_source_impl.dart';
import 'package:clean_arch_project/features/list_cats/data/models/cat_image_model.dart';
import 'package:clean_arch_project/features/list_cats/data/models/cat_model.dart';
import 'package:clean_arch_project/features/list_cats/data/models/cat_weight_model.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';
import 'cat_list_data_source_test.mocks.dart';

@GenerateMocks([CleanArchProjectClient])
void main() {
  late MockCleanArchProjectClient client;
  late CatListDataSourceImpl dataSource;

  final testCatModel = [
    const CatModel(
      id: '1',
      name: 'testCat',
      origin: 'da putaque pariu',
      description: 'gato amarelo',
      temperament: 'putasso',
      catImage:
          CatImageModel(id: '1', width: 1000, height: 1000, url: 'https://cdn2.thecatapi.com/images/ozEvzdVM-.jpg'),
      catWeight: CatWeightModel(imperial: 'imperial', metric: 'metric'),
    ),
  ];

  setUp(() {
    client = MockCleanArchProjectClient();
    dataSource = CatListDataSourceImpl(client: client);
  });

  group('Get Cat List', () {
    test('should return cat list when status code is 200', () async {
      final data = jsonDecode(fixture('cat-list.json'));
      // Arrange
      when(client.get(any, headers: anyNamed('headers')))
          .thenAnswer((realInvocation) async => CleanArchProjectResponse(statusCode: 200, data: data));
      // Act
      final result = await dataSource.index();
      // Assert
      expect(result, testCatModel);
    });
  });
}
