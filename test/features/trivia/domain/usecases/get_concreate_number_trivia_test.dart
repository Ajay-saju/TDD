import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';
import 'package:tdd/features/trivia/domain/repositories/number_trivia_reposotory.dart';
import 'package:tdd/features/trivia/domain/usecases/get_concrete_number_trivia_usecase.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {
  // create two instences for GetConcreteNumberTrivia and NumberTriviaRepository

  late MockNumberTriviaRepository mockNumberTriviaRepository;
  late GetConcreteNumberTrivia usecases;

  void main() {
    setUp(() {
      mockNumberTriviaRepository = MockNumberTriviaRepository();
      usecases = GetConcreteNumberTrivia(mockNumberTriviaRepository);
    });
    final testNumber = 1;
    final testTrivia = NumberTrivia(name: "testName", number: 1);
  }
}
