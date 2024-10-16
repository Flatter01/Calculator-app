abstract class TextState {}

class TextInitial extends TextState {
  final String text;
  TextInitial({required this.text});
}

class ButtonColorState extends TextState {}
