// a what does the class depend on
// answer = autenticationRepository

// how con we create a facke version of the dependecy
// Answer MockTail

// how do we control what our dependencie do
// Answer -- user the mocktails  API

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_tutorialteste/source/domain/repositories/authentication_repository.dart';

class MockAuthRepository extends Mock implements AuthenticationRepository {}

void main() {
  test(
    "should call the [Authrepository.creatUser]",
    () async {
      // Arrang


      // act


      //assert
    },
  );
}
