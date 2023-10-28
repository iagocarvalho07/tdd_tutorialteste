import 'package:dartz/dartz.dart';
import 'package:tdd_tutorialteste/core/error/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef ResultVoid = ResultFuture<void>;