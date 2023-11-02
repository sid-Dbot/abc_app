part of 'tab_bar_bloc.dart';

@immutable
sealed class TabBarEvent {}

class ChangeTab extends TabBarEvent {
  int tab;
  ChangeTab({required this.tab});
}
