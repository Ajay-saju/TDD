import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/core/platform/network_info.dart';
import 'package:tdd/features/trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd/features/trivia/data/repositories/number_trivia_repository_impl.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaLocalDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  NumberTriviaRepositoryImp repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp((){
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository= NumberTriviaRepositoryImp();
  });
}
