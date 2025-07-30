import '../coffee_machine/coffee_machine_state.dart';
import '../lib/interfaces.dart';

class WaitChooseState implements State {
  @override
  void ejectMoney(ICoffeeMachine coffeeMachine) {
    print('Order or leave your money!');
  }

  @override
  void insertMoney(ICoffeeMachine coffeeMachine) {
    print('Enough funds uploaded to order?');
    coffeeMachine.setState(CoffeeMachineState.choose);
  }

  @override
  void makeCoffee(ICoffeeMachine coffeeMachine) {
    if (coffeeMachine.selectedCoffee() == CoffeeMachineState.none) {
      print('Choose the coffee you want to make!');
    } else {
      coffeeMachine.setState(coffeeMachine.selectedCoffee());
    }
  }
}
