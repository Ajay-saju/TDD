import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entites/number_trivia.dart';

abstract class NumberTriviaRepository{
  Future<Either<Failure,NumberTrivia>>  getConcreteNumberTrivia(int number);
   Future<Either<Failure,NumberTrivia>>getRandomNumberTrivia();
}                                                                                   