import 'package:hive_flutter/adapters.dart';
import 'package:second_app/config/constants/hive_table_constants.dart';

@HiveType(typeId: HiveTableConstant.userTableId)
class AuthHiveModel {
  @HiveField(0)
  final String userId;
  @HiveField(1)
  final String fName;
  @HiveField(2)
  final String lName;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String phoneNumber;
  @HiveField(3)
  final String password;

  AuthHiveModel(
      {required this.userId,
      required this.fName,
      required this.lName,
      required this.email,
      required this.phoneNumber,
      required this.password});

  // empty constructor
  AuthHiveModel.empty()
      : this(
          userId: '',
          fName: '',
          lName: '',
          email: '',
          phoneNumber: '',
          password: '',
        );

  @override
  String toString() {
    return 'userId: $userId, fName: $fName,lName: $lName,email: $email,phoneNumber: $phoneNumber,password: $password';
  }
}
