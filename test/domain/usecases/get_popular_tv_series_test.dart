import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv.dart';
import 'package:ditonton/domain/usecases/get_popular_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetPopularTvSeries usecase;
  late MockTvRepository mockTvRpository;

  setUp(() {
    mockTvRpository = MockTvRepository();
    usecase = GetPopularTvSeries(mockTvRpository);
  });

  final tTvs = <Tv>[];

  group(
    'GetPopularTvSeries Tests',
    () {
      group(
        'execute',
        () {
          test(
            'should get list of tv series from the repository when execute function is called',
            () async {
              // arrange
              when(mockTvRpository.getPopularTvSeries())
                  .thenAnswer((_) async => Right(tTvs));
              // act
              final result = await usecase.execute();
              // assert
              expect(result, Right(tTvs));
            },
          );
        },
      );
    },
  );
}
