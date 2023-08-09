part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class IncrementEvent extends MainEvent {
  final int number;

  IncrementEvent(
    this.number,
  );

  @override
  List<Object?> get props => [number];
}

class DecrementEvent extends MainEvent {
  final int number;

  DecrementEvent(
    this.number,
  );

  @override
  List<Object?> get props => [
        number,
      ];
}

class FirstElementEvent extends MainEvent {
  final int count;

  FirstElementEvent(
    this.count,
  );

  @override
  List<Object?> get props => [count];
}

class FirstElementMinusEvent extends MainEvent {
  final int count;

  FirstElementMinusEvent(this.count);

  @override
  List<Object?> get props => [count];
}

class SecondElementEvent extends MainEvent {
  final int secondNumber;

  SecondElementEvent(
    this.secondNumber,
  );

  @override
  List<Object?> get props => [secondNumber];
}

class SecondElementMinusEvent extends MainEvent {
  final int secondNumber;

  SecondElementMinusEvent(this.secondNumber);

  @override
  List<Object?> get props => [secondNumber];
}

class ThirteenElementEvent extends MainEvent {
  final int thirdNumber;

  ThirteenElementEvent(
    this.thirdNumber,
  );

  @override
  List<Object?> get props => [thirdNumber];
}

class ThirteenElementMinusEvent extends MainEvent {
  final int thirdNumber;

  ThirteenElementMinusEvent(this.thirdNumber);

  @override
  List<Object?> get props => [thirdNumber];
}

class FourteenElementEvent extends MainEvent {
  final int fourNumber;

  FourteenElementEvent(
    this.fourNumber,
  );

  @override
  List<Object?> get props => [fourNumber];
}

class FourteenElementMinusEvent extends MainEvent {
  final int fourNumber;

  FourteenElementMinusEvent(this.fourNumber);

  @override
  List<Object?> get props => [fourNumber];
}

class IsLikeEvent extends MainEvent {
  final bool isLike;

  IsLikeEvent({required this.isLike});

  @override
  List<Object?> get props => [isLike];
}
