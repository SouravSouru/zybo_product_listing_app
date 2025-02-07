import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';

part 'splash_event.dart';

part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.initial()) {
    on<_Started>(_onStart);
  }

  void _onStart(SplashEvent event, Emitter<SplashState> emit) async {
    emit(const SplashState.loading());
    await Future.delayed(const Duration(seconds: 2));
    if (!emit.isDone) {
      emit(const SplashState.completed());
    }
  }
}
