import 'coffee_machine/coffee_machine.dart';

void main() {
  var coffeeMachine = CoffeeMachine(1.0, 1.0);
  coffeeMachine.makeCoffee();
  coffeeMachine.insertMoney(10);
  coffeeMachine.insertMoney(10);
  coffeeMachine.cappuccino();
  coffeeMachine.makeCoffee();
  coffeeMachine.insertMoney(20);
  print('**** When not enough products to make coffee ****');
  coffeeMachine = CoffeeMachine(0.1, 0.1);
  coffeeMachine.insertMoney(100);
  coffeeMachine.makeCoffee();
  coffeeMachine.latte();
  coffeeMachine.makeCoffee();
}
