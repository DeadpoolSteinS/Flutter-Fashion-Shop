import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(const PageState(1)) {
    on<ChangePage>((event, emit) {
      emit(PageState(event.value));
    });
  }
}
