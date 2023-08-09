part of 'main_bloc.dart';


class MainState extends Equatable {
  final int number;
  final int count;
  final int secondNumber;
  final int thirdNumber;
  final int fourNumber;
  final bool isLike;

  const MainState(
      {this.number = 0, this.count = 0, this.secondNumber = 0, this.thirdNumber = 0, this.fourNumber = 0, this.isLike = false});

  MainState copyWith(
      {int? number, int? count, int? secondNumber, int? thirdNumber, int? fourNumber, bool? isLike,}) {
    return MainState(
      number: number ?? this.number,
      count: count ?? this.number,
      secondNumber: secondNumber ?? this.secondNumber,
      thirdNumber: thirdNumber ?? this.thirdNumber,
      fourNumber: fourNumber ?? this.thirdNumber,
      isLike: isLike ?? this.isLike,
    );
  }

  @override
  List<Object?> get props =>
      [number, count, secondNumber, thirdNumber, fourNumber, isLike];


}
