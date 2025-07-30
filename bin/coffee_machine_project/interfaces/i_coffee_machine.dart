import '../coffee_machine/coffee_machine_state.dart';

abstract interface class ICoffeeMachine {
  double getWaterValue();

  double getMilkValue();

  int getOrderMoney();

  void setWaterValue(double value);

  void setMilkValue(double value);

  void setOrderMoney(int money);

  void setState(CoffeeMachineState state);

  CoffeeMachineState selectedCoffee();

  void returnMoney();
}
