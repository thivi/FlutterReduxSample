import 'package:sample/model.dart';

class AppState {
  final Counter counter;
  AppState(this.counter);
  AppState.initial():counter=new Counter(0);
}