import '../coffee_machine/coffee_machine_state.dart';
import '../lib/interfaces.dart';

class EspressoState implements State {
  @override
  void ejectMoney(ICoffeeMachine coffeeMachine) {
    print('You will not get it!!!');
  }

  @override
  void insertMoney(ICoffeeMachine coffeeMachine) {
    makeCoffee(coffeeMachine);
  }

  @override
  void makeCoffee(ICoffeeMachine coffeeMachine) {
    final cost = 25;
    final needWater = 0.3;
    var waterResidues = coffeeMachine.getWaterValue() - needWater;
    var moneyResidues = coffeeMachine.getOrderMoney() - cost;
    if (moneyResidues >= 0) {
      if (waterResidues >= 0) {
        print('Cooking Latte!');
        coffeeMachine.setWaterValue(waterResidues);
        coffeeMachine.setOrderMoney(moneyResidues);
      } else {
        print('Not enough ingredients!');
      }
      if (coffeeMachine.getOrderMoney() > 0) {
        coffeeMachine.setState(CoffeeMachineState.changeMoney);
        coffeeMachine.returnMoney();
      } else {
        coffeeMachine.setState(CoffeeMachineState.idle);
      }
    } else {
      print('Not enough funds!');
    }
  }
}
