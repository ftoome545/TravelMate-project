import 'package:dartz/dartz.dart';
import 'package:travel_mate/core/errors/exceptions.dart';
import 'package:travel_mate/core/errors/failures.dart';
import 'package:travel_mate/core/services/firebase_auth_service.dart';
import 'package:travel_mate/features/auth/domain/entities/user_entity.dart';
import 'package:travel_mate/features/auth/domain/repos/auth_repo.dart';
import 'package:travel_mate/features/auth/models/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);

      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure("An error occourred, try again later"));
    }
  }
}
