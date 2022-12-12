import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_cubit/state_management/sample_cubit.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  final SampleCubit sampleCubit = SampleCubit();

  @override
  Widget build (BuildContext context) {
    return widget(
      child: BlocBuilder <SampleCubit, SampleState>(
        bloc: sampleCubit,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: sampleCubit.color,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => sampleCubit.changeBgColor(),
                    child: Text(
                      sampleCubit.txtColor,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}