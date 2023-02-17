// Mocks generated by Mockito 5.3.2 from annotations
// in clean_arch_project/test/features/cat_list_data_source/cat_list_data_source_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:clean_arch_project/core/client/clean_arch_project_client.dart'
    as _i3;
import 'package:clean_arch_project/core/client/clean_arch_project_response.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeCleanArchProjectResponse_0 extends _i1.SmartFake
    implements _i2.CleanArchProjectResponse {
  _FakeCleanArchProjectResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CleanArchProjectClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockCleanArchProjectClient extends _i1.Mock
    implements _i3.CleanArchProjectClient {
  MockCleanArchProjectClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.CleanArchProjectResponse> get(
    String? path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #headers: headers,
            #query: query,
          },
        ),
        returnValue: _i4.Future<_i2.CleanArchProjectResponse>.value(
            _FakeCleanArchProjectResponse_0(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #headers: headers,
              #query: query,
            },
          ),
        )),
      ) as _i4.Future<_i2.CleanArchProjectResponse>);
  @override
  _i4.Future<_i2.CleanArchProjectResponse> post(
    String? path, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #headers: headers,
            #body: body,
          },
        ),
        returnValue: _i4.Future<_i2.CleanArchProjectResponse>.value(
            _FakeCleanArchProjectResponse_0(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #headers: headers,
              #body: body,
            },
          ),
        )),
      ) as _i4.Future<_i2.CleanArchProjectResponse>);
  @override
  _i4.Future<_i2.CleanArchProjectResponse> put(
    String? path, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #headers: headers,
            #body: body,
          },
        ),
        returnValue: _i4.Future<_i2.CleanArchProjectResponse>.value(
            _FakeCleanArchProjectResponse_0(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #headers: headers,
              #body: body,
            },
          ),
        )),
      ) as _i4.Future<_i2.CleanArchProjectResponse>);
  @override
  _i4.Future<_i2.CleanArchProjectResponse> delete(
    String? path, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #headers: headers,
            #body: body,
          },
        ),
        returnValue: _i4.Future<_i2.CleanArchProjectResponse>.value(
            _FakeCleanArchProjectResponse_0(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #headers: headers,
              #body: body,
            },
          ),
        )),
      ) as _i4.Future<_i2.CleanArchProjectResponse>);
}
