import 'package:tdd_tutorialteste/core/utilits/typedeg.dart';

abstract class UseCasesWithParams<Type, Params> {
  const UseCasesWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UserCasesWithoutParams<Type> {
  const UserCasesWithoutParams();
  ResultFuture<Type> call();
}
