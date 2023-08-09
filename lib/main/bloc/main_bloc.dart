import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<IncrementEvent>(_incrementNumber);
    on<DecrementEvent>(_decrement);
    on<FirstElementEvent>(_incrementFirst);
    on<FirstElementMinusEvent>(_decrementFirst);
    on<SecondElementEvent>(_incrementSecond);
    on<SecondElementMinusEvent>(_decrementSecond);
  }

  void _incrementNumber(IncrementEvent event, Emitter<MainState> emit) {
      emit(
        state.copyWith(
          number: event.number + 1,
        ),
      );

  }

  void _decrement(DecrementEvent event, Emitter<MainState> emit) {
    int newNumber = state.number - 1;

    newNumber < 0 ? newNumber = 0 : state.number;

    emit(state.copyWith(number: newNumber, ));
  }

  void _incrementFirst(FirstElementEvent event, Emitter<MainState> emit) {
    emit(
      state.copyWith(
        count: event.count + 1,
      ),
    );

  }

  void _decrementFirst(FirstElementMinusEvent event, Emitter<MainState> emit) {


    int newNumbers = state.count - 1;

    newNumbers < 0 ? newNumbers = 0 : state.count;

    emit(state.copyWith( count: newNumbers));
  }

  void _incrementSecond(SecondElementEvent event, Emitter<MainState> emit) {
    emit(
      state.copyWith(
        secondNumber: event.secondNumber + 1,
      ),
    );

  }

  void _decrementSecond(SecondElementMinusEvent event, Emitter<MainState> emit) {
    int secondNum = state.secondNumber - 1;

    secondNum < 0 ? secondNum = 0 : state.secondNumber;

    emit(state.copyWith(secondNumber: secondNum, ));
  }


  void _incrementThirteen(SecondElementEvent event, Emitter<MainState> emit) {
    emit(
      state.copyWith(
        thirdNumber: event.thirdNumber + 1,
      ),
    );

  }

  void _decrementThirteen(SecondElementMinusEvent event, Emitter<MainState> emit) {
    int thirdNumbers = state.thirdNumber - 1;

    thirdNumbers < 0 ? thirdNumbers = 0 : state.thirdNumber;

    emit(state.copyWith(thirdNumbers: thirdNumber, ));
  }
}
