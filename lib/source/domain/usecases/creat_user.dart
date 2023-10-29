import 'package:equatable/equatable.dart';
import 'package:tdd_tutorialteste/source/domain/repositories/authentication_repository.dart';

import '../../../core/usecases/usecases.dart';
import '../../../core/utilits/typedeg.dart';

class CreatUser extends UseCasesWithParams<void, CreatUserParams> {
  const CreatUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultVoid call(CreatUserParams params) async => _repository.creatUser(
        createdAt: params.createdAt,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreatUserParams extends Equatable {
  const CreatUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const CreatUserParams.empty()
      : this(
            createdAt: 'empty_creat', name: 'emptyName', avatar: 'emptyAvatar');

  final String createdAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
