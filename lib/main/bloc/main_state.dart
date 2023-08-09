part of 'main_bloc.dart';



class MainState extends Equatable{
  final int number;
  final int count;
  final int secondNumber;
  final int thirdNumber;
  final int fourNumber;
   const MainState({this.number=0,this.count=0,this.secondNumber=0,this.thirdNumber=0,this.fourNumber=0});

  MainState copyWith({int? number,int? count,int? secondNumber, int? thirdNumber,int? fourNumber }){
    return MainState(
        number: number?? this.number,
      count: count?? this.number,
      secondNumber: secondNumber?? this.secondNumber,
      thirdNumber: thirdNumber??this.thirdNumber,
      fourNumber: fourNumber?? this.thirdNumber,
    );
  }

   @override
  List<Object?> get props=>[number,count,secondNumber,thirdNumber,fourNumber];

}
