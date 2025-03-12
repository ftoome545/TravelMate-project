import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:travel_mate/features/auth/domain/entities/user_entity.dart';
import 'package:travel_mate/features/auth/domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    final result = await authRepo.signInWithEmailAndPassword(email, password);

    result.fold((failure) => emit(SigninFailure(message: failure.message)),
        (userEntity) => emit(SigninSuccess(userEntity: userEntity)));
  }

  Future<void> signInWithGoogle() async {
    final result = await authRepo.signInWithGoogle();

    result.fold((failure) => emit(SigninFailure(message: failure.message)),
        (userEntity) => emit(SigninSuccess(userEntity: userEntity)));
  }

  Future<void> signInWithFacebook() async {
    final result = await authRepo.signInWithFacebook();

    result.fold((failure) => emit(SigninFailure(message: failure.message)),
        (userEntity) => emit(SigninSuccess(userEntity: userEntity)));
  }
}
