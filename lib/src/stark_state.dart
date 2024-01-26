import 'package:flutter/material.dart';
import 'package:stark/stark.dart';
import 'package:stark_bloc/src/stark_cubit.dart';
import 'stark_bloc.dart';


abstract class StarkState<T extends StatefulWidget,
    Bloc extends StarkBloc> extends InjectableState<T> {
  late Bloc bloc;

  @override
  @mustCallSuper
  void initState() {
    bloc = get();
    super.initState();
    bloc.init();
  }
}

abstract class StarkCubitState<T extends StatefulWidget,
Cubit extends StarkCubit> extends InjectableState<T> {
  late Cubit cubit;

  @override
  @mustCallSuper
  void initState() {
    cubit = get();
    super.initState();
    cubit.init();
  }
}
