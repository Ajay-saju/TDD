import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/features/trivia/data/models/number_trivia_model.dart';
import 'package:tdd/features/trivia/domain/entites/number_trivia.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
  const testNumberTriviaModel =
      NumberTriviaModel(text: 'Test text', number: 1);
  test('should be a sub class of NumberTriviaEntity', () async {
    expect(testNumberTriviaModel, isA<NumberTrivia>());
  });
  group('fromJson', () {
    test('should return a valid model when the JSON number is integer',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));

      // act
      final result = NumberTriviaModel.fromJson(jsonMap);

      // const expected Model = NumberTriviaModel(text: "Test text", number: 1);

      //assert
      expect(result, testNumberTriviaModel);
    });
    test('should return avalid model when the Json number is double', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      // act
      final result = NumberTriviaModel.fromJson(jsonMap);

      const expectedModel = NumberTriviaModel(number: 1.0, text: 'Test text');

      expect(result, expectedModel);
    });
  });
}
