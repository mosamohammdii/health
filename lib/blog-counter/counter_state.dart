abstract class CounterState {}

class CounterInit extends CounterState {
  int counter;

  CounterInit(this.counter);
}

class Increament extends CounterState {
  int counter;
  Increament(this.counter);
}


class Decreament extends CounterState {
  int counter;
  Decreament(this.counter);
}
