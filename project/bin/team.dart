import 'player.dart';
import 'trainer.dart';
class Team {

  String name;
  String city;
  List<Player> players;
  Trainer trainer;

  Team(this.name, this.city, this.players, this.trainer);

  String display() {
    return 'Team: $name, City: $city, Players: ${players.map((p) => p.name).join(', ')}, Trainer: ${trainer.name}';
  }
}
