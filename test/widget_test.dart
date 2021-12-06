import 'package:flutter_test/flutter_test.dart';
import 'package:piedra_papel_tijeras/Game.dart';

void main() {

  var paper = "paper";
  var rock = "rock";
  var scissors = "scissors";

    test('Choose election is equal returns a champion message', () {
      final game = Game();

      var messagePaperTie = game.isWinner(paper, paper);
      var messageRockTie = game.isWinner(rock, rock);
      var messageScissorsTie = game.isWinner(scissors, scissors);

      var messagePlayerWins = game.isWinner(paper, rock);
      var messageCpuWins = game.isWinner(paper, scissors);

      expect(messagePaperTie, "Empatas");
      expect(messageRockTie, "Empatas");
      expect(messageScissorsTie, "Empatas");

      expect(messagePlayerWins, "Ganas");
      expect(messageCpuWins, "Pierdes");
    });
}



