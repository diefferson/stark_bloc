
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stark/stark.dart';

abstract class StarkBloc<State> extends BlocBase<State> implements Disposable {

  StarkBloc(State initialState) : super(initialState);

  void init() {}

  @override
  void dispose() {}
}
