import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocState extends Cubit<String> {
  SimpleBlocState() : super("Pos1");

  void setSomeValue() {
    String t = state == "Pos1" ? "Pos2" : "Pos1";
    emit(t);
  }
}
