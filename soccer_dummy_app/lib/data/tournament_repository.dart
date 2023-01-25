import 'package:soccer_dummy_app/core/entities/tournament.dart';

class TournamentRepository {
  static List<Tournament> getTournament() => List.generate(
      30,
      (index) => Tournament(
          id: index + 1,
          name: 'Tournament ${index + 1}',
          profileUrl: 'https://cdn.pixabay.com/photo/2017/09/02/10/51/sports-2706937_960_720.jpg',
          matchDay: 'Saturday'
          ));
}
