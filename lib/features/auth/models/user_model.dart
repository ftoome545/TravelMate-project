import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_mate/features/auth/domain/entities/user_entity.dart';

//this class will handel the data that will come from the service
class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
        name: user.displayName ?? "", email: user.email ?? "", uId: user.uid);
  }
}
