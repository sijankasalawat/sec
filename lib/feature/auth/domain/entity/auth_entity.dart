import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String? id;
  final String fName;
  final String lName;
  final String email;
  final String phoneNumber;
  final String password;

  const AuthEntity({
    this.id,
    required this.fName,
    required this.lName,
    required this.password,
    required this.email,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [id, fName,lName, password, email, phoneNumber];
}
