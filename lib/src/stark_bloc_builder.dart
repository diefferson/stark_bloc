import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stark/stark.dart';

class StarkBlocBuilder<B extends StateStreamable<B>> extends StatelessWidget {

  const StarkBlocBuilder({super.key,
    required this.builder,
    this.buildWhen,
  });

  final BlocWidgetBuilder<B> builder;
  final BlocBuilderCondition<B>? buildWhen;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      buildWhen: buildWhen,
      builder: builder,
      bloc: Stark.get<B>(),
    );
  }
}