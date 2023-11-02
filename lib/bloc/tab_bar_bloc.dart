import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tab_bar_event.dart';
part 'tab_bar_state.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  TabBarBloc() : super(TabBarInitial()) {
    on<ChangeTab>((event, emit) {
      // TODO: implement event handler
      emit(TabChanged(event.tab));
    });
  }
}
