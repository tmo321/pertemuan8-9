import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'sample_state.dart';

class SampleCubit extends Cubit<SampleState> {
  SampleCubit() : super(SampleInitial());

  bool status = true;
  Color color = Colors.red;
  String txtColor = 'Red';

  void changeBgColor() {
    status ? color = Colors.red : color = Colors.blue;
    status ? txtColor = 'Red' : txtColor = 'Blue';
    status = !status;
    emit(ChangeColor(color));
    emit(ChangeText(txtColor));
  }
}