part of 'sample_cubit.dart';


abstract class SampleState {}

class SampleInitial extends SampleState {}

class ChangeColor extends SampleState {
  final color;
  ChangeColor(this.color);
}

class ChangeText extends SampleState {
  final String text;

  ChangeText(this.text);
}