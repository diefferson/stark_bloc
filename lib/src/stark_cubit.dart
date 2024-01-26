
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stark/stark.dart';

abstract class StarkCubit<State> extends Cubit<State> implements Disposable {

  StarkCubit(State initialState) : super(initialState);

  void init() {}

  @override
  void dispose() {}
}
