import 'package:dartz/dartz.dart';
import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
