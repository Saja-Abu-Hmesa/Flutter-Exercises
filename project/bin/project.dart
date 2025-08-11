import 'dart:io';
import 'player.dart';
import 'trainer.dart';
import 'team.dart';
import 'stadium.dart';
import 'game.dart';

void main() {
  Player player1 = Player("Messi", "Argentina", "Forward", "Inter Miami");
  Player player2 = Player("Ronaldo", "Portugal", "Forward", "Al Nassr");

  Trainer trainer1 = Trainer("Pep Guardiola", "15 years", null);
  Trainer trainer2 = Trainer("Carlo Ancelotti", "20 years", null);

  Team team1 = Team("Inter Miami", "Miami", [player1], trainer1);
  Team team2 = Team("Al Nassr", "Riyadh", [player2], trainer2);
  trainer1.team = team1;
  trainer2.team = team2;

  print(
    "Choose strategy for ${trainer1.name} (Offensive, Defensive, Balanced):",
  );
  String? strat1 = stdin.readLineSync();
  trainer1.strategy =
      (strat1 != null && strat1.isNotEmpty) ? strat1 : "Balanced";

  print(
    "Choose strategy for ${trainer2.name} (Offensive, Defensive, Balanced):",
  );
  String? strat2 = stdin.readLineSync();
  trainer2.strategy =
      (strat2 != null && strat2.isNotEmpty) ? strat2 : "Balanced";

  Stadium stadium = Stadium("Camp Nou", 99000, "Barcelona", [
    "Inter Miami",
    "Al Nassr",
  ]);

  Weather weather = Weather("Sunny", 5);

  Game match1 = Game(
    homeTeam: team1,
    awayTeam: team2,
    stadium: stadium,
    date: "2025-08-15",
    weather: weather,
  );

  print(player1.display());
  print(player2.display());
  print(trainer1.display());
  print(trainer2.display());
  print(team1.display());
  print(team2.display());
  print(stadium.display());

  print(weather.display());

  match1.simulateMatch();

  print(match1.display());
}
