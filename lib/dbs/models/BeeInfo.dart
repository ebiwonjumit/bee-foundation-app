
import 'dart:io';

class BeeInfo{

  final String userId;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  File? userImage;
  String? userImageUrl;

  BeeInfo({required this.userId, required this.firstName, required this.lastName, required this.email, required this.password, required this.userImage, required this.userImageUrl});

}