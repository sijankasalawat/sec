
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_app/core/network/http_service.dart';
import 'package:second_app/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:second_app/feature/auth/data/repository/auth_local_repository.dart';
import 'package:second_app/feature/auth/domain/use_case/auth_usecase.dart';

final authUseCaseProvider = Provider<AuthUseCase>((ref) {
  return AuthUseCase(
    AuthLocalRepository(
      AuthLocalDataSource(
        ref.read(httpServiceProvider), // Use the Dio instance
      ),
    ),
  );
});
