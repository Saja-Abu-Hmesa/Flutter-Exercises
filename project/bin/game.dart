import 'dart:math';
import 'team.dart';
import 'stadium.dart';
import 'strategy.dart';

class Weather {
  String condition;
  int powerImpact;

  Weather(this.condition, this.powerImpact);

  String display() => 'Weather: $condition (Power Impact: $powerImpact)';
}

class GameEvent {
  String description;
  int minute;

  GameEvent(this.description, this.minute);

  String display() => 'Minute $minute: $description';
}

class Game {
  Team homeTeam;
  Team awayTeam;
  Stadium stadium;
  String date;
  String score = "Not played yet";
  Weather weather;
  List<GameEvent> events = [];

  Game({
    required this.homeTeam,
    required this.awayTeam,
    required this.stadium,
    required this.date,
    required this.weather,
  });

  int calculateTeamPower(Team team, Team opponent) {
    int playersPower = team.players.fold(0, (sum, p) => sum + p.power!);
    int trainerPower = team.trainer.power ?? 0;
    int strategyBonus = Strategy.getBonus(
      team.trainer.strategy,
      opponent.trainer.strategy,
    );
    int randomFactor = Random().nextInt(10);

    int totalPower =
        playersPower +
        trainerPower +
        strategyBonus +
        randomFactor +
        weather.powerImpact;
    return totalPower < 0 ? 0 : totalPower;
  }

  void simulateMatch() {
    int homePower = calculateTeamPower(homeTeam, awayTeam);
    int awayPower = calculateTeamPower(awayTeam, homeTeam);

    if (Random().nextBool()) {
      events.add(
        GameEvent('${homeTeam.name} scores a GOAL!', Random().nextInt(90)),
      );
      score = "${Random().nextInt(4)} - $score".split('-')[1];
    }
    if (Random().nextBool()) {
      events.add(
        GameEvent('${awayTeam.name} gets a yellow card.', Random().nextInt(90)),
      );
    }

    if (homePower > awayPower) {
      score = "3 - 1";
    } else if (awayPower > homePower) {
      score = "1 - 3";
    } else {
      score = "2 - 2";
    }
  }

  String display() {
    String eventStrings =
        events.isEmpty
            ? "No events yet."
            : events.map((e) => e.display()).join('\n');
    return '''
Game on $date at ${stadium.name} (${stadium.location})
Weather: ${weather.condition}

${homeTeam.name} VS ${awayTeam.name}
Score: $score

Events:
$eventStrings
''';
  }
}
