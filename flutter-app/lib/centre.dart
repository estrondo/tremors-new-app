import 'package:tremors/grpc.dart';
import 'package:tremors/security.dart';
import 'package:tremors/service/object_service.dart';

class CentreModule {
  final ObjectService objectService;

  CentreModule({
    required GrpcModule grpcModule,
    required SecurityModule securityModule,
  }) : objectService = ObjectService(
          grpcModule.objectStorageServiceClient(),
          grpcModule.accessTokenMetadataProvider,
        );
}
