import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'generic_state.dart';

class GenericCubit<T> extends Cubit<GenericState<T>> {
  GenericCubit(T data) : super(GenericInitialState<T>(data));

  onUpdateData(T data) {
    emit(GenericUpdateState<T>(data, !state.changed, state.error));
  }

  onFailedResponse({String error = ""}) {
    emit(GenericFailedState<T>(state.data, !state.changed, error));
  }

  onUpdateToInitState(T data) {
    emit(GenericInitialState<T>(data));
  }
}
