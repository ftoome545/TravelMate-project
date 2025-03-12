import 'package:dartz/dartz.dart';
import 'package:travel_mate/core/errors/failures.dart';
import 'package:travel_mate/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password);

  Future<Either<Failure, UserEntity>> signInWithGoogle();

  Future<Either<Failure, UserEntity>> signInWithFacebook();
}
