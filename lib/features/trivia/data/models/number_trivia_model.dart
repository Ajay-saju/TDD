import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  const NumberTriviaModel({required super.text, required super.number})
      : super();

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(number: json['number'], text: json['text']);
  }

  Map<String, dynamic> toJson() {
    return {'text': text, 'number': number};
  }
}
