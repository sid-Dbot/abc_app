part of 'grid_items_bloc.dart';

@immutable
sealed class GridItemsState {
  List icon = [
    'assets/youtube.png',
    'assets/facebook.png',
    'assets/abc-news.png',
    'assets/top-news.png'
  ];
  List source = ['Youtube', 'Facebook', 'ABC news', 'TOP NEWS'];
  List colors = [
    Colors.red,
    Colors.blue[900],
    Colors.green.shade600,
    Colors.purple[900]
  ];
  @override
  List<Object?> get props => [icon, source, colors];
}

final class GridItemsInitial extends GridItemsState {}
