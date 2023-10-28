import 'package:tdd_tutorialteste/core/usecases/usecases.dart';
import 'package:tdd_tutorialteste/core/utilits/typedeg.dart';
import 'package:tdd_tutorialteste/source/domain/entities/userEntiti.dart';
import 'package:tdd_tutorialteste/source/domain/repositories/authentication_repository.dart';

class GetUserUseCase extends UserCasesWithoutParams<List<UserEntiti>> {

  const GetUserUseCase(this._repository);

  final AuthenticationRepository _repository;


  @override
  ResultFuture<List<UserEntiti>> call() async => _repository.getUsers();
}
