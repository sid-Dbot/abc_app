import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'grid_items_event.dart';
part 'grid_items_state.dart';

class GridItemsBloc extends Bloc<GridItemsEvent, GridItemsState> {
  GridItemsBloc() : super(GridItemsInitial()) {
    on<GridItemsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
