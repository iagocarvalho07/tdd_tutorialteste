import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorialteste/source/domain/entities/userEntiti.dart';
import 'package:tdd_tutorialteste/source/domain/repositories/authentication_repository.dart';
import 'package:tdd_tutorialteste/source/domain/usecases/get_user_usecase.dart';

class MockAuthRepository extends Mock implements AuthenticationRepository {}

void main() {
  late AuthenticationRepository repository;
  late GetUserUseCase usecase;

  setUp(() {
    repository = MockAuthRepository();
    usecase = GetUserUseCase(repository);
  });

  const Tresponse = [UserEntiti.empty()];

  test("should call the [authrepo.getuser] and return lis<Users>", () async {
    // arrange
    when(() => repository.getUsers()).thenAnswer(
      (_) async => const Right(Tresponse),
    );
    
    final result = await usecase();
    expect(result, equals(const Right<dynamic, List<UserEntiti>>(Tresponse)));
    verify(() => repository.getUsers()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
