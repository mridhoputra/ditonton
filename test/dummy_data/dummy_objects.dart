import 'package:ditonton/data/models/movie_table.dart';
import 'package:ditonton/data/models/tv_table.dart';
import 'package:ditonton/domain/entities/episode_to_air.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/entities/network.dart';
import 'package:ditonton/domain/entities/production_country.dart';
import 'package:ditonton/domain/entities/season.dart';
import 'package:ditonton/domain/entities/spoken_language.dart';
import 'package:ditonton/domain/entities/tv.dart';
import 'package:ditonton/domain/entities/tv_detail.dart';

final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);

final testTv = Tv(
  backdropPath: "/5DUMPBSnHOZsbBv81GFXZXvDpo6.jpg",
  firstAirDate: "2022-10-12",
  genreIds: [16, 10759, 10765, 35],
  id: 114410,
  name: "Chainsaw Man",
  originCountry: ["JP"],
  originalLanguage: "ja",
  originalName: "",
  overview:
      "Denji has a simple dream-to live a happy and peaceful life, spending time with a girl he likes. This is a far cry from reality, however, as Denji is forced by the yakuza into killing devils in order to pay off his crushing debts. Using his pet devil Pochita as a weapon, he is ready to do anything for a bit of cash.",
  popularity: 1351.046,
  posterPath: "/npdB6eFzizki0WaZ1OvKcJrWe97.jpg",
  voteAverage: 8.6,
  voteCount: 398,
);

final testMovieList = [testMovie];

final testTvList = [testTv];

final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);

final testTvDetail = TvDetail(
  adult: false,
  backdropPath: "/5DUMPBSnHOZsbBv81GFXZXvDpo6.jpg",
  createdBy: [],
  episodeRunTime: [24],
  firstAirDate: "2022-10-12",
  genres: [Genre(id: 16, name: 'Animation')],
  homepage: "https://chainsawman.dog/",
  id: 114410,
  inProduction: true,
  languages: ["ja"],
  lastAirDate: "2022-12-14",
  lastEpisodeToAir: EpisodeToAir(
    airDate: "2022-12-14",
    episodeNumber: 10,
    id: 3963650,
    name: "BRUISED & BATTERED",
    overview:
        "Samurai Sword's vicious attack resulted in many lost personnel for Public Safety Devil Extermination Division 4.\n\nAki Hayakawa wakes up in a hospital bed, unable to accept the reality of losing Himeno. Kurose and Tendo then appear in front of Hayakawa, letting him know that they are now in charge of coaching him.\n\nMeanwhile, Makima introduces Denji and Power to a member of Public Safety who will act as their mentor in order to strengthen Division 4.",
    productionCode: "",
    runtime: 24,
    seasonNumber: 1,
    showId: 114410,
    stillPath: "/latU1KQwYICuYqpz3oNphvYG6DH.jpg",
    voteAverage: 10,
    voteCount: 2,
  ),
  name: "Chainsaw Man",
  nextEpisodeToAir: EpisodeToAir(
    airDate: "2022-12-21",
    episodeNumber: 11,
    id: 3963652,
    name: "Episode 11",
    overview: "",
    productionCode: "",
    runtime: 24,
    seasonNumber: 1,
    showId: 114410,
    stillPath: null,
    voteAverage: 0,
    voteCount: 0,
  ),
  networks: [
    Network(
      id: 98,
      name: "TV Tokyo",
      logoPath: "/kGRavMqgyx4p2X4C96bjRCj50oI.png",
      originCountry: "JP",
    )
  ],
  numberOfEpisodes: 12,
  numberOfSeasons: 1,
  originCountry: ["JP"],
  originalLanguage: "ja",
  originalName: "",
  overview:
      "Denji has a simple dream-to live a happy and peaceful life, spending time with a girl he likes. This is a far cry from reality, however, as Denji is forced by the yakuza into killing devils in order to pay off his crushing debts. Using his pet devil Pochita as a weapon, he is ready to do anything for a bit of cash.",
  popularity: 1273.739,
  posterPath: "/npdB6eFzizki0WaZ1OvKcJrWe97.jpg",
  productionCompanies: [
    Network(
        id: 21444,
        name: "MAPPA",
        logoPath: "/wSejGn3lAZdQ5muByxvzigwyDY6.png",
        originCountry: "JP")
  ],
  productionCountries: [
    ProductionCountry(iso31661: "JP", name: "Japan"),
  ],
  seasons: [
    Season(
      airDate: "2022-10-12",
      episodeCount: 12,
      id: 171559,
      name: "Season 1",
      overview: "",
      posterPath: "/sB2DASpJtfnTs7iK3RqkUMFVDEa.jpg",
      seasonNumber: 1,
    )
  ],
  spokenLanguages: [SpokenLanguage(englishName: "Japanese", iso6391: "ja", name: "")],
  status: "Returning Series",
  tagline: "",
  type: "Scripted",
  voteAverage: 8.6,
  voteCount: 402,
);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testWatchListTv = Tv.watchlist(
  id: 1,
  overview: "overview",
  posterPath: 'posterPath',
  name: 'name',
);

final testMovieTable = MovieTable(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testTvTable = TvTable(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};

final testTvMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'name': 'name',
};
