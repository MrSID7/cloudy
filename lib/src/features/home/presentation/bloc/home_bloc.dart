import 'package:cloudy/src/core/extention/ext_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(currentPageIndex: 0)) {
    on<ChangePage>((event, emit) {
      emit(HomeState(currentPageIndex: event.index));
    });
  }
}
