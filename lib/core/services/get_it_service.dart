import 'package:get_it/get_it.dart';
import 'package:travel_mate/core/services/firebase_auth_service.dart';
import 'package:travel_mate/features/auth/data/repos/auth_repo_impl.dart';
import 'package:travel_mate/features/auth/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGitIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
  ));
}
