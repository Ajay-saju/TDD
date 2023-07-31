import 'package:dartz/dartz.dart';

import 'package:tdd/core/errors/failure.dart';

import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';

import '../../domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImp implements NumberTriviaRepository{
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}