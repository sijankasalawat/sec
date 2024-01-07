
import 'package:dartz/dartz.dart';
import 'package:second_app/core/failure/failure.dart';
import 'package:second_app/feature/auth/data/data_source/auth_remote_data_source.dart';
import 'package:second_app/feature/auth/domain/entity/auth_entity.dart';
import 'package:second_app/feature/auth/domain/repository/auth_repository.dart';

class AuthLocalRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSource;

  AuthLocalRepository(this._authLocalDataSource);

  @override
  Future<Either<Failure, bool>> loginUser(String email, String password) {
    return _authLocalDataSource.loginUser(email, password);
  }

  @override
  Future<Either<Failure, bool>> registerUser(AuthEntity user) {
    return _authLocalDataSource.registerUser(user);
  }
}
