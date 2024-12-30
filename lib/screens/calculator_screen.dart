import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fit_index/store/bmi_cubit.dart';
import 'package:fit_index/screens/results_screen.dart';
import 'package:fit_index/widgets/counter_control.dart';
import 'package:fit_index/widgets/gender_selector.dart';
import 'package:fit_index/widgets/slider_control.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child: BlocBuilder<BmiCubit, BmiState>(
        builder: (context, state) {
          final cubit = context.read<BmiCubit>();
          return Scaffold(
            appBar: AppBar(
              title: const Text('BMI Calculator'),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      GenderSelector(
                        isMale: true,
                        selected: state.isMale,
                        onTap: () => cubit.updateGender(true),
                      ),
                      GenderSelector(
                        isMale: false,
                        selected: !state.isMale,
                        onTap: () => cubit.updateGender(false),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SliderControl(
                    value: state.height,
                    min: 80.0,
                    max: 220.0,
                    label: 'HEIGHT',
                    onChanged: (value) => cubit.updateHeight(value),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      CounterControl(
                        title: 'WEIGHT',
                        value: state.weight,
                        onDecrement: () => cubit.updateWeight(state.weight - 1),
                        onIncrement: () => cubit.updateWeight(state.weight + 1),
                      ),
                      CounterControl(
                        title: 'AGE',
                        value: state.age,
                        onDecrement: () => cubit.updateAge(state.age - 1),
                        onIncrement: () => cubit.updateAge(state.age + 1),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  height: 50.0,
                  color: Colors.red,
                  minWidth: double.infinity,
                  onPressed: () {
                    double result = cubit.calculateBmi();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultsScreen(result: result),
                      ),
                    );
                  },
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
