
import 'package:dartz/dartz.dart';
import 'package:second_app/core/failure/failure.dart';
import 'package:second_app/feature/auth/domain/entity/auth_entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, bool>> registerUser(AuthEntity user);
  Future<Either<Failure, bool>> loginUser(String email, String password);
}
