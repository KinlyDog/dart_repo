import '../coffee_machine/coffee_machine_state.dart';
import '../lib/interfaces.dart';

class ChangeState implements State {
  @override
  void ejectMoney(ICoffeeMachine coffeeMachine) {
    print('Return ${coffeeMachine.getOrderMoney()} parrots');
    coffeeMachine.setOrderMoney(0);
    coffeeMachine.setState(CoffeeMachineState.idle);
  }

  @override
  void insertMoney(ICoffeeMachine coffeeMachine) {
    ejectMoney(coffeeMachine);
  }

  @override
  void makeCoffee(ICoffeeMachine coffeeMachine) {
    ejectMoney(coffeeMachine);
  }
}
