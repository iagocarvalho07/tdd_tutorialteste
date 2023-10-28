import 'package:dartz/dartz.dart';
import 'package:tdd_tutorialteste/core/error/failure.dart';
import 'package:tdd_tutorialteste/core/utilits/typedeg.dart';
import 'package:tdd_tutorialteste/source/domain/entities/userEntiti.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid creatUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  Future<Either<Failure, List<UserEntiti>>> getUsers();
}
