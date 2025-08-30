int myFunc(int a, int b){
  assert(b != 0, 'ПАТАМУШТА НА НОЛЬ ДЕЛИТЬ НЕЛЬЗЯ');
  return a ~/ b;
}

void main(List<String> arguments) {
  print(myFunc(6, 0));
}
