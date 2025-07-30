import '../coffee_machine/coffee_machine_state.dart';
import '../lib/interfaces.dart';

class IdleState implements State {
  @override
  void ejectMoney(ICoffeeMachine coffeeMachine) {
    print('What the money? Oo');
  }

  @override
  void insertMoney(ICoffeeMachine coffeeMachine) {
    print('Go to the choose state');
    coffeeMachine.setState(CoffeeMachineState.choose);
  }

  @override
  void makeCoffee(ICoffeeMachine coffeeMachine) {
    print('Get out of here, rogue');
  }
}
