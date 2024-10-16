import 'package:calculator/bloc/counter_event.dart';
import 'package:calculator/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextBloc extends Bloc<TextEvent, TextState> {
  TextBloc() : super(TextInitial(text: "0")) {
    on<WriteEvent>((event, emit) {
      if (func.isEmpty) {
        showText(event.newText, emit);
      } else {
        showNewText(event.newText, emit);
      }
    });
    on<WriteFunctionEvent>((event, emit) {
      changeButtonColor(event.func, emit);
    });
    on<ResultEvent>((event, emit) {
      showResult(emit);
    });
    // on(answer());
    // context.read<TextBloc>().add(WriteEvent(newText: 9));
  }
  String func = "";
  String oldValue = '0';
  String newValue = '0';
  List<Color> buttonColors = [
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange
  ];
  List<String> buttonNames = ['/', 'x', '-', '+'];
  showText(String value, Emitter<TextState> emit) {
    if (oldValue == '0') {
      oldValue = value;
    } else {
      oldValue = "$oldValue$value";
    }
    emit(TextInitial(text: oldValue));
  }

  showNewText(String value, Emitter<TextState> emit) {
    if (newValue == '0') {
      newValue = value;
    } else {
      newValue = "$newValue$value";
    }
    emit(TextInitial(text: newValue));
  }

  changeButtonColor(String value, Emitter<TextState> emit) {
    func = value;
    for (var i = 0; i < buttonNames.length; i++) {
      if (value == buttonNames[i]) {
        buttonColors[i] = Colors.white;
      } else {
        buttonColors[i] = Colors.orange;
      }
    }
    emit(TextInitial(text: oldValue));
  }

  void showResult(Emitter<TextState> emit) {
    if (func == '+') {
      addValues(emit);
    }
    if (func == '-') {
      minusValues(emit);
    }
    if (func == 'x') {
      multiplicationValues(emit);
    }
     if (func == '/') {
      divisionValues(emit);
    }
    func = '';
    for (var i = 0; i < buttonNames.length; i++) {
      buttonColors[i] = Colors.orange;
    }
  }

  addValues(Emitter<TextState> emit) {
    int a = int.parse(oldValue);
    int b = int.parse(newValue);
    String sum = (a + b).toString();
    oldValue = '0';
    newValue = '0';
    emit(TextInitial(text: sum));
  }

  minusValues(Emitter<TextState> emit) {
    int a = int.parse(oldValue);
    int b = int.parse(newValue);
    String sum = (a - b).toString();
    oldValue = '0';
    newValue = '0';
    emit(TextInitial(text: sum));
  }

  multiplicationValues(Emitter<TextState> emit) {
    int a = int.parse(oldValue);
    int b = int.parse(newValue);
    String sum = (a * b).toString();
    oldValue = '0';
    newValue = '0';
    emit(TextInitial(text: sum));
  }

  divisionValues(Emitter<TextState> emit) {
    int a = int.parse(oldValue);
    int b = int.parse(newValue);
    String sum = (a / b).toString();
    oldValue = '0';
    newValue = '0';
    emit(TextInitial(text: sum));
  }
}
