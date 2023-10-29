import 'dart:convert';
import 'dart:ffi';

import 'package:tdd_tutorialteste/core/utilits/typedeg.dart';
import 'package:tdd_tutorialteste/source/domain/entities/userEntiti.dart';

class UserModel extends UserEntiti {
  const UserModel(
      {required super.id,
      required super.createdAt,
      required super.name,
      required super.avatar});

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(jsonDecode(source) as DataMap);

  UserModel.fromMap(DataMap map)
      : this(
            avatar: map['avatar'] as String,
            id: map['id'] as String,
            createdAt: map['createAt'] as String,
            name: map['name'] as String);
}
