import 'package:apple_shop/blog-counter/counter_event.dart';
import 'package:apple_shop/blog-counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInit(0)) {
    on<CounterEventIncreament>((event, emit) {
      emit(Increament(counter++));
      print(event);
      print(emit);
    });

    on<CounterEventDeceament>((event, emit) => emit(Decreament(counter--)) , );
  }
}
