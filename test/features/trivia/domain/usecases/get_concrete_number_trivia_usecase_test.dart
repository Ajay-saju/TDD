import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/core/errors/failure.dart';
import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';
import 'package:tdd/features/trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd/features/trivia/domain/usecases/get_concrete_number_trivia_usecase.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}
// create two instences for GetConcreteNumberTrivia and NumberTriviaRepository

main() {
  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetConcreteNumberTrivia usecases;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecases = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });
  const testNumber = 1;
  const testTrivia = NumberTrivia(text: "testName", number: 1);
  // const testOutput =

  test('should return number trivia repository ', () async {
    // arrange
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber))
        .thenAnswer((_) async =>const Right<Failure, NumberTrivia>(testTrivia)
      
    );
    // act
    final result = await usecases(const Params(number: testNumber));
    // assert
    expect(result, const Right(testTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
