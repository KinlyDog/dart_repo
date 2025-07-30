import 'i_coffee_machine.dart';

abstract interface class State {
  void insertMoney(ICoffeeMachine coffeeMachine);

  void ejectMoney(ICoffeeMachine coffeeMachine);

  void makeCoffee(ICoffeeMachine coffeeMachine);
}
