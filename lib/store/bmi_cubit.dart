import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiState());

  void updateGender(bool isMale) {
    emit(state.copyWith(isMale: isMale));
  }

  void updateHeight(double height) {
    emit(state.copyWith(height: height));
  }

  void updateWeight(int weight) {
    emit(state.copyWith(weight: weight));
  }

  void updateAge(int age) {
    emit(state.copyWith(age: age));
  }

  double calculateBmi() {
    return state.weight / ((state.height / 100) * (state.height / 100));
  }
}

class BmiState {
  final bool isMale;
  final double height;
  final int weight;
  final int age;

  BmiState({
    this.isMale = true,
    this.height = 150.0,
    this.weight = 60,
    this.age = 20,
  });

  BmiState copyWith({
    bool? isMale,
    double? height,
    int? weight,
    int? age,
  }) {
    return BmiState(
      isMale: isMale ?? this.isMale,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      age: age ?? this.age,
    );
  }
}
