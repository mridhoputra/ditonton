import 'package:equatable/equatable.dart';

class Network extends Equatable {
  Network({
    required this.id,
    required this.name,
    required this.logoPath,
    required this.originCountry,
  });

  final int id;
  final String name;
  final String? logoPath;
  final String originCountry;

  @override
  List<Object?> get props => [
        id,
        name,
        logoPath,
        originCountry,
      ];
}
