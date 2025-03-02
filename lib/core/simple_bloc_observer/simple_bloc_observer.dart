import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  //extends better than implements for BlocObserver, because in BlocObserver i want to run some method and override rest method so use extends, but implements like you restrict to run this method
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('in this ${bloc.runtimeType} happen change: $change');
    //just bloc so the output is instance..WeatherCubit, but bloc.runtimeType so immidiately the output is WeatherCubit
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    debugPrint('close the: ${bloc.runtimeType}');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint('create the: ${bloc.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
}
