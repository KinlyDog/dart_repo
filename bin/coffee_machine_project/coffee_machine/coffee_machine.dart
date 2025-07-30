import '../lib/interfaces.dart';
import '../lib/states.dart';
import 'coffee_machine_state.dart';

class CoffeeMachine implements ICoffeeMachine {
  double _waterCapacity;
  double _milkCapacity;
  var _orderMoney = 0;
  CoffeeMachineState _selectedCoffee = CoffeeMachineState.none;
  final _allStates = <CoffeeMachineState, State>{
    CoffeeMachineState.idle: IdleState(),
    CoffeeMachineState.choose: WaitChooseState(),
    CoffeeMachineState.changeMoney: ChangeState(),
    CoffeeMachineState.cappuccino: CappuccinoState(),
    CoffeeMachineState.latte: LatteState(),
    CoffeeMachineState.espresso: EspressoState(),
  };
  late State _currentState;

  CoffeeMachine(this._waterCapacity, this._milkCapacity) {
    _currentState = _allStates[CoffeeMachineState.idle]!;
  }

  @override
  double getMilkValue() => _milkCapacity;

  @override
  int getOrderMoney() => _orderMoney;

  @override
  double getWaterValue() => _waterCapacity;

  @override
  CoffeeMachineState selectedCoffee() => _selectedCoffee;

  @override
  void setMilkValue(double value) {
    _milkCapacity = value;
  }

  @override
  void setOrderMoney(int money) {
    _orderMoney = money;
  }

  @override
  void setWaterValue(double value) {
    _waterCapacity = value;
  }

  void cappuccino() {
    print('Cappuccino preparation selected');
    _selectedCoffee = CoffeeMachineState.cappuccino;
    _currentState.makeCoffee(this);
  }

  void latte() {
    print('Latte preparation selected');
    _selectedCoffee = CoffeeMachineState.latte;
    _currentState.makeCoffee(this);
  }

  void espresso() {
    print('Espresso preparation selected');
    _selectedCoffee = CoffeeMachineState.espresso;
    _currentState.makeCoffee(this);
  }

  @override
  void setState(CoffeeMachineState state) {
    if (state == CoffeeMachineState.idle) {
      _selectedCoffee = CoffeeMachineState.none;
    }
    _currentState = _allStates[state]!;
  }

  @override
  void returnMoney() {
    _currentState.ejectMoney(this);
  }

  void insertMoney(int money) {
    _orderMoney += money;
    print('Inserted $_orderMoney parrots');
    _currentState.insertMoney(this);
  }

  void makeCoffee() {
    print('Start preparation of the selected coffee!');
    _currentState.makeCoffee(this);
  }
}
