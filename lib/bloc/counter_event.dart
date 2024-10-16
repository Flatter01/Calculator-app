abstract class TextEvent {}

class WriteEvent extends TextEvent {
  final String newText;

  WriteEvent({required this.newText});
}

class WriteFunctionEvent extends TextEvent {
  final String func;

  WriteFunctionEvent({required this.func});
}

class ResultEvent extends TextEvent {}
