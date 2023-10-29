// a what does the class depend on
// answer = autenticationRepository

// how con we create a facke version of the dependecy
// Answer MockTail

// how do we control what our dependencie do
// Answer -- user the mocktails  API

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorialteste/core/error/failure.dart';
import 'package:tdd_tutorialteste/source/domain/repositories/authentication_repository.dart';
import 'package:tdd_tutorialteste/source/domain/usecases/creat_user.dart';

class MockAuthRepository extends Mock implements AuthenticationRepository {}

void main() {
  late CreatUser usecase;
  late AuthenticationRepository repository;

  setUpAll(() {
    repository = MockAuthRepository();
    usecase = CreatUser(repository);
  });

  final params = CreatUserParams.empty();

  test(
    "should call the [Authrepository.creatUser]",
    () async {
      // Arrang
      when(
        () => repository.creatUser(
          createdAt: any(named: "createdAt"),
          name: any(named: "name"),
          avatar: any(named: "avatar"),
        ),
      ).thenAnswer((_) async => Right(null));

      // act
      final result = await usecase(params);

      //assert
      expect(result, equals(const Right<Failure, void>(null)));
      verify(() => repository.creatUser(
          createdAt: params.createdAt,
          name: params.name,
          avatar: params.avatar),).called(1);
      verifyNoMoreInteractions(repository);
    },
  );
}
