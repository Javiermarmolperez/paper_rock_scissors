import 'dart:math';

class Game {

  String chooseElection(String anElection) {
    var cpuElection = randomElection();

    var aWinner = isWinner(anElection, cpuElection);

    return aWinner;
  }

  String isWinner( player, cpu) {

    if(player == "paper") {
      return rulesPaper(cpu);
    }
    if(player == "rock") {
      return rulesRock(cpu);
    }
    return rulesScissors(cpu);

  }
  String randomElection() {
    var list=<String>["paper","rock","scissors"];

    var rand= new Random();

    int i = rand.nextInt(list.length);
    String randomString=list[i];

    return randomString;
  }

  //TODO refactor

  String rulesPaper(cpu) {
    switch (cpu) {
      case "rock":
        return "Ganas";
      case "scissors":
        return "Pierdes";
      default:
        return "Empatas";
    }
  }

  String rulesRock(cpu) {
    switch (cpu) {
      case "scissors":
        return "Ganas";
      case "paper":
        return "Pierdes";
      default:
        return "Empatas";
    }
  }

  String rulesScissors(cpu) {
    switch (cpu) {
      case "paper":
        return "Ganas";
      case "rock":
        return "Pierdes";
      default:
        return "Empatas";
    }
  }


}