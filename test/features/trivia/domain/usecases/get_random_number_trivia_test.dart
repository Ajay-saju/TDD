import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/core/errors/failure.dart';
import 'package:tdd/core/usecases/usecases.dart';
import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';
import 'package:tdd/features/trivia/domain/repositories/number_trivia_repository.dart';
// import 'package:tdd/features/trivia/domain/repositories/number_trivia_reposotory.dart';
import 'package:tdd/features/trivia/domain/usecases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}
  void main() {
    late GetRandomNumberTrivia usecase;
    late MockNumberTriviaRepository mockNumberTriviaRepository;

    setUp(() {
      mockNumberTriviaRepository = MockNumberTriviaRepository();
      usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
    });

    final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

    test(
      'should get trivia from the repository',
      () async {
        // arrange
        when(mockNumberTriviaRepository.getRandomNumberTrivia())
            .thenAnswer((_) async =>  Right<Failure, NumberTrivia>(tNumberTrivia));
        // act
        // Since random number doesn't require any parameters, we pass in NoParams.
        final result = await usecase(NoParams());
        // assert
        expect(result, Right(tNumberTrivia));
        verify(mockNumberTriviaRepository.getRandomNumberTrivia());
        verifyNoMoreInteractions(mockNumberTriviaRepository);
      },
    );
  }

