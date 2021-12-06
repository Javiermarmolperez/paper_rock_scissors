
import 'package:flutter_test/flutter_test.dart';


void main() {

      test('Counter value should be incremented', () {
        final game = Game();

        var anElection = "paper";

        var group = game.chooseElection(anElection);

        expect(group, ["paper", ""]);
      });
}

class Game {

  chooseElection(String anElection) {
    return [anElection,""];
  }
}
