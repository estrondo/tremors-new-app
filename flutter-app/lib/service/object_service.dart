import 'dart:async';

import 'package:dogs_cbor/dogs_cbor.dart';
import 'package:dogs_core/dogs_core.dart';
import 'package:grpc/grpc.dart';
import 'package:tremors/errors.dart';
import 'package:tremors/generated/grpc/toph.v1.pbgrpc.dart';
import 'package:tremors/logger.dart';
import 'package:tremors/security/grpc.dart';

var _logger = typedLogger(ObjectService);

String _toStringId(int value) => value.toRadixString(32);

class ObjectService {
  final ObjectStorageServiceClient _serviceClient;
  final AccessTokenMetadataProvider _metadataProvider;
  var _operationId = 0;
  var _requestId = 0;
  CallOptions _callOptions;

  ObjectService(this._serviceClient, this._metadataProvider)
      : _callOptions = CallOptions(
          providers: [
            _metadataProvider,
          ],
        );

  Future<T> fetchSystemObject<T>(String path, T defaultValue) async {
    final [folder, name] = path.split('/');
    final result = await _executeSystemRequest(
      GrpcObject_ReadOperation(
        fetchObject: GrpcObject_FetchObjectOperation(
          id: _toStringId(_operationId++),
          folder: folder,
          name: name,
        ),
      ),
    );

    if (result.whichContent() == GrpcObject_Result_Content.fetchObject) {
      final object = result.fetchObject.exists
          ? dogs.fromCbor<T>(result.fetchObject.content)
          : defaultValue ??
              (throw IllegalArgumentException("No default value provided!"));
      _logger.d("Fetched system object from $path.");
      return object;
    } else {
      throw UnexpectedException("It was expected a FetchObject result!");
    }
  }

  FutureOr<T> fetchUserObject<T>(String path, T? defaultValue) async {
    final [folder, name] = path.split('/');

    final result = await _executeUserReadRequest(
      GrpcObject_ReadOperation(
        fetchObject: GrpcObject_FetchObjectOperation(
          id: _toStringId(_operationId++),
          name: name,
          folder: folder,
        ),
      ),
    );

    if (result.whichContent() == GrpcObject_Result_Content.fetchObject) {
      final object = result.fetchObject.exists
          ? dogs.fromCbor<T>(result.fetchObject.content)
          : defaultValue ??
              (throw IllegalArgumentException("No default value provided!"));
      _logger.d("Fetched an user object from $path.");
      return object;
    } else {
      throw UnexpectedException("It was expected a FetchObject result!");
    }
  }

  FutureOr<T> updateUserObject<T>(String path, T object) async {
    final [folder, name] = path.split('/');
    List<int> content;
    try {
      content = dogs.toCbor(object);
    } catch (e, s) {
      _logger.e("Unable to convert the object!", error: e, stackTrace: s);
      rethrow;
    }

    final result = await _executeUserUpdateRequest(
      GrpcObject_UpdateOperation(
        updateObject: GrpcObject_UpdateObjectOperation(
          id: _toStringId(_operationId++),
          name: name,
          folder: folder,
          content: content,
        ),
      ),
    );

    if (result.whichContent() == GrpcObject_Result_Content.updateObject) {
      _logger.d("Updated object at $path.");
      return object;
    } else {
      throw UnexpectedException("It was expected an update object result!");
    }
  }

  FutureOr<GrpcObject_Result> _executeUserReadRequest(
      GrpcObject_ReadOperation operation) async {
    final request = GrpcObject_Request(
      readRequest: GrpcObject_ReadRequest(
        id: _toStringId(_requestId++),
        operations: [operation],
      ),
    );

    final response = await _serviceClient
        .user(
          Stream.value(request),
          options: _callOptions,
        )
        .single;
    return response.results.first;
  }

  FutureOr<GrpcObject_Result> _executeUserUpdateRequest(
      GrpcObject_UpdateOperation operation) async {
    final request = GrpcObject_Request(
      updateRequest: GrpcObject_UpdateRequest(
        id: _toStringId(_requestId++),
        operations: [operation],
      ),
    );

    final response = await _serviceClient
        .user(
          Stream.value(request),
          options: _callOptions,
        )
        .single;

    return response.results.first;
  }

  FutureOr<GrpcObject_Result> _executeSystemRequest(
    GrpcObject_ReadOperation operation,
  ) async {
    final request = GrpcObject_ReadRequest(
      id: _toStringId(_requestId++),
      operations: [operation],
    );

    final response = await _serviceClient
        .system(
          Stream.value(request),
          options: _callOptions,
        )
        .single;

    return response.results.first;
  }
}
