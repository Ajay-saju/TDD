import 'package:dartz/dartz.dart';
import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';

import '../../../../core/failure.dart';
import '../../../../core/usecases.dart';
import '../repositories/number_trivia_reposotory.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
